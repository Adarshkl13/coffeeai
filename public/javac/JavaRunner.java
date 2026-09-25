// In-browser helper used by app/javascript/runners/java.js (runs inside CheerpJ's Java 17 runtime).
// Build (JDK 17+): javac --release 17 -cp ecj-3.46.100.jar -d build JavaRunner.java && jar cf java-runner.jar -C build .
//
// Started once per page with `serve`; it stays alive so ECJ's classes and caches stay warm between runs.
// Jobs arrive through the native nextJob() (implemented in JavaScript via cheerpjInit({ natives })):
//   compile <outDir> <str file> <Name.java>   copy the source to <outDir>-src/<Name.java>, compile with ECJ
//   run <classDir> <className>                run main() in a fresh class loader
// Output goes to the native emit(); jobDone() reports each job's exit code.
//
// CheerpJ workarounds (all observed with CheerpJ 4.3's Java 17 runtime):
//  - integer division by zero raises an ArithmeticException that try/catch in the same method can miss
//    (e.g. `try { return a / b; } catch (ArithmeticException e)`), and may resurface later;
//  - VM-raised exceptions carry no message (ArrayIndexOutOfBoundsException prints "null"), and a failed
//    array store check, a negative array size or a stack overflow surfaces as an ArithmeticException.
// So compiled code routes int/long division and array element access through JavaRunner.Rt, which checks
// first and throws the same exceptions (with the same messages) a real JVM would. System.exit() also goes
// through Rt so a program can't take down the (slow to restart) JVM.
import java.io.*;
import java.lang.reflect.*;
import java.net.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ClassFilePool;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.codegen.TypeAnnotationCodeStream;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavaRunner {
  static native String nextJob();
  static native void jobDone(int code);
  static native void emit(String text, boolean err);

  // Buffers bytes and hands complete lines to JS; switching streams flushes the other one first,
  // so stdout/stderr stay in the order they were written.
  static final class Sink extends OutputStream {
    static Sink last;
    final boolean err;
    final ByteArrayOutputStream buf = new ByteArrayOutputStream();
    Sink(boolean err) { this.err = err; }

    @Override public synchronized void write(int b) { write(new byte[] { (byte) b }, 0, 1); }
    @Override public synchronized void write(byte[] b, int off, int len) {
      if (last != null && last != this) last.flush();
      last = this;
      buf.write(b, off, len);
      if (len > 0 && b[off + len - 1] == '\n') flush();
    }
    @Override public synchronized void flush() {
      if (buf.size() == 0) return;
      String text = buf.toString(StandardCharsets.UTF_8);
      buf.reset();
      emit(text, err);
    }
  }

  static final PrintStream OUT = new PrintStream(new Sink(false), true, StandardCharsets.UTF_8);
  static final PrintStream ERR = new PrintStream(new Sink(true), true, StandardCharsets.UTF_8);

  public static void main(String[] args) throws Exception {
    System.setOut(OUT);
    System.setErr(ERR);
    // If a program calls System.exit() the JVM goes away; flush what it printed first
    Runtime.getRuntime().addShutdownHook(new Thread(JavaRunner::flushAll));
    while (true) {
      String[] job = nextJob().split("\n");
      int code;
      try {
        code = "compile".equals(job[0]) ? compile(job[1], job[2], job[3]) : run(job[1], job[2]);
      } catch (Throwable t) {
        t.printStackTrace(ERR);
        code = 2;
      }
      flushAll();
      jobDone(code);
    }
  }

  static void flushAll() { OUT.flush(); ERR.flush(); }

  static int compile(String outDir, String strFile, String fileName) throws Exception {
    patchEcjForCheerpj();
    // CheerpJ's /str/ mount is flat and read-only; ECJ wants a real file named after the public class
    Path source = Paths.get(outDir + "-src", fileName);
    Files.createDirectories(source.getParent());
    Files.write(source, Files.readAllBytes(Paths.get(strFile)));
    PrintWriter ow = new PrintWriter(new OutputStreamWriter(OUT, StandardCharsets.UTF_8), true);
    PrintWriter ew = new PrintWriter(new OutputStreamWriter(ERR, StandardCharsets.UTF_8), true);
    boolean ok = new SafeMain(ow, ew)
        .compile(new String[] { "-17", "-encoding", "UTF-8", "-nowarn", "-d", outDir, source.toString() });
    ow.flush();
    ew.flush();
    return ok ? 0 : 1;
  }

  // ECJ locates the platform classes via <java.home>/release and <java.home>/lib/jrt-fs.jar. CheerpJ's
  // runtime has neither, but its built-in jrt:/ file system works, so pre-seed ECJ's caches with it.
  static boolean patched;
  static void patchEcjForCheerpj() throws Exception {
    if (patched) return;
    Path home = Paths.get(System.getProperty("java.home")).toAbsolutePath().normalize();
    Class<?> jdk = Class.forName("org.eclipse.jdt.internal.compiler.util.Jdk");
    putStatic(jdk, "pathToRelease", home, System.getProperty("java.version"));
    FileSystem jrt = FileSystems.getFileSystem(URI.create("jrt:/"));
    putStatic(org.eclipse.jdt.internal.compiler.util.JRTUtil.class, "JRT_FILE_SYSTEMS", home, jrt);
    patched = true;
  }

  @SuppressWarnings("unchecked")
  static void putStatic(Class<?> owner, String field, Object key, Object value) throws Exception {
    Field f = owner.getDeclaredField(field);
    f.setAccessible(true);
    ((Map<Object, Object>) f.get(null)).put(key, value);
  }

  static int run(String classDir, String className) throws Exception {
    System.setIn(new ByteArrayInputStream(new byte[0]));   // no interactive stdin in the browser
    URL url = new File(classDir).toURI().toURL();
    try (URLClassLoader loader = new URLClassLoader(new URL[] { url }, RT_ONLY)) {
      Method main;
      try {
        main = Class.forName(className, false, loader).getMethod("main", String[].class);
        main.setAccessible(true);   // the class itself may be package-private
      } catch (ClassNotFoundException | NoSuchMethodException e) {
        ERR.println("Error: Main method not found in class " + className + ", please define the main method as:");
        ERR.println("   public static void main(String[] args)");
        return 1;
      }
      Thread.currentThread().setContextClassLoader(loader);
      try {
        main.invoke(null, (Object) new String[0]);
      } catch (InvocationTargetException e) {
        Throwable t = e.getCause();
        if (t instanceof Rt.Exit) return ((Rt.Exit) t).status;
        t = fixStackOverflow(t);
        trimLauncherFrames(t);
        OUT.flush();
        ERR.print("Exception in thread \"main\" ");
        t.printStackTrace(ERR);
        return 1;
      } finally {
        Thread.currentThread().setContextClassLoader(JavaRunner.class.getClassLoader());
      }
    }
    return 0;
  }

  // Programs see the platform classes plus JavaRunner.Rt, nothing else from this jar or ECJ
  static final ClassLoader RT_ONLY = new ClassLoader(ClassLoader.getPlatformClassLoader()) {
    @Override protected Class<?> findClass(String name) throws ClassNotFoundException {
      if (name.equals(Rt.class.getName())) return Rt.class;
      throw new ClassNotFoundException(name);
    }
  };

  // CheerpJ reports running out of stack as a message-less ArithmeticException thrown from very deep
  // recursion (a real ArithmeticException from student code comes from Rt, with "/ by zero").
  static Throwable fixStackOverflow(Throwable t) {
    StackTraceElement[] st = t.getStackTrace();
    if (t.getClass() != ArithmeticException.class || t.getMessage() != null || st.length < 500) return t;
    StackOverflowError so = new StackOverflowError();
    so.setStackTrace(st);
    return so;
  }

  // Drop the Rt frames on top and the reflection/launcher frames below the student's main(), and keep at
  // most 1024 frames (the JVM's default MaxJavaStackTraceDepth), matching what `java` prints.
  static void trimLauncherFrames(Throwable t) {
    Set<Throwable> seen = Collections.newSetFromMap(new IdentityHashMap<>());
    for (; t != null && seen.add(t); t = t.getCause()) {
      StackTraceElement[] st = t.getStackTrace();
      int start = 0;
      while (start < st.length && st[start].getClassName().equals(Rt.class.getName())) start++;
      int end = st.length;
      for (int i = start; i < st.length; i++) {
        String c = st[i].getClassName();
        if (c.startsWith("jdk.internal.reflect.") || c.startsWith("java.lang.reflect.") || c.equals(JavaRunner.class.getName())) { end = i; break; }
      }
      end = Math.min(end, start + 1024);
      if (start > 0 || end < st.length) t.setStackTrace(Arrays.copyOfRange(st, start, end));
    }
  }

  // ── Compiler hook: ECJ's per-type ClassFile objects come from a pool; pre-fill it with ClassFiles
  // whose code stream emits Rt calls (ClassFile.reset keeps a TypeAnnotationCodeStream subclass).
  static final class SafeMain extends org.eclipse.jdt.internal.compiler.batch.Main {
    SafeMain(PrintWriter out, PrintWriter err) { super(out, err, false, null, null); }

    @Override public CompilationUnit[] getCompilationUnits() {
      try {
        ClassFilePool pool = this.batchCompiler.lookupEnvironment.classFilePool;
        Field f = ClassFilePool.class.getDeclaredField("classFiles");
        f.setAccessible(true);
        ClassFile[] files = (ClassFile[]) f.get(pool);
        for (int i = 0; i < files.length; i++) if (files[i] == null) files[i] = new SafeClassFile();
      } catch (ReflectiveOperationException e) {
        throw new IllegalStateException(e);
      }
      return super.getCompilationUnits();
    }
  }

  static final class SafeClassFile extends ClassFile {
    SafeClassFile() {
      this.constantPool = new ConstantPool(this);
      this.codeStream = new SafeCodeStream(this);
      initByteArrays(0);
    }
  }

  static final class SafeCodeStream extends TypeAnnotationCodeStream {
    static final char[] RT = "JavaRunner$Rt".toCharArray();
    SafeCodeStream(ClassFile classFile) { super(classFile); }

    private void rt(String name, String signature, int argSlots, int returnSlots, TypeBinding returnType) {
      invoke(Opcodes.OPC_invokestatic, argSlots, returnSlots, RT, name.toCharArray(), signature.toCharArray(), returnType);
    }
    // [array, index] stays on the stack for the real load after the check
    private void checkIndex(String arrayDescriptor) {
      dup2();
      rt("check", "(" + arrayDescriptor + "I)V", 2, 0, null);
    }

    @Override public void invoke(byte opcode, MethodBinding method, TypeBinding declaringClass, TypeReference[] typeArguments) {
      if (opcode == Opcodes.OPC_invokestatic && "exit".equals(String.valueOf(method.selector))
          && "java.lang.System".equals(String.valueOf(method.declaringClass.readableName()))) {
        rt("exit", "(I)V", 1, 0, null);
      } else {
        super.invoke(opcode, method, declaringClass, typeArguments);
      }
    }

    @Override public void idiv() { rt("idiv", "(II)I", 2, 1, TypeBinding.INT); }
    @Override public void irem() { rt("irem", "(II)I", 2, 1, TypeBinding.INT); }
    @Override public void ldiv() { rt("ldiv", "(JJ)J", 4, 2, TypeBinding.LONG); }
    @Override public void lrem() { rt("lrem", "(JJ)J", 4, 2, TypeBinding.LONG); }

    @Override public void newarray(int arrayTypeCode) { rt("size", "(I)I", 1, 1, TypeBinding.INT); super.newarray(arrayTypeCode); }
    @Override public void anewarray(TypeBinding type) { rt("size", "(I)I", 1, 1, TypeBinding.INT); super.anewarray(type); }

    @Override public void iaload() { checkIndex("[I"); super.iaload(); }
    @Override public void laload() { checkIndex("[J"); super.laload(); }
    @Override public void faload() { checkIndex("[F"); super.faload(); }
    @Override public void daload() { checkIndex("[D"); super.daload(); }
    @Override public void aaload() { checkIndex("[Ljava/lang/Object;"); super.aaload(); }
    @Override public void baload() { checkIndex("Ljava/lang/Object;"); super.baload(); }
    @Override public void caload() { checkIndex("[C"); super.caload(); }
    @Override public void saload() { checkIndex("[S"); super.saload(); }

    @Override public void iastore() { rt("store", "([III)V", 3, 0, null); }
    @Override public void lastore() { rt("store", "([JIJ)V", 4, 0, null); }
    @Override public void fastore() { rt("store", "([FIF)V", 3, 0, null); }
    @Override public void dastore() { rt("store", "([DID)V", 4, 0, null); }
    @Override public void aastore() { rt("store", "([Ljava/lang/Object;ILjava/lang/Object;)V", 3, 0, null); }
    @Override public void bastore() { rt("store", "(Ljava/lang/Object;II)V", 3, 0, null); }
    @Override public void castore() { rt("store", "([CIC)V", 3, 0, null); }
    @Override public void sastore() { rt("store", "([SIS)V", 3, 0, null); }
  }

  // Called from compiled student code (see SafeCodeStream)
  public static final class Rt {
    private Rt() {}

    // Thrown by System.exit() calls in student code; JavaRunner.run() turns it into the exit status
    public static final class Exit extends Error {
      final int status;
      Exit(int status) { super(null, null, false, false); this.status = status; }
    }
    public static void exit(int status) { throw new Exit(status); }

    public static int idiv(int a, int b) { if (b == 0) throw divByZero(); return b == -1 ? -a : a / b; }
    public static int irem(int a, int b) { if (b == 0) throw divByZero(); return b == -1 ? 0 : a % b; }
    public static long ldiv(long a, long b) { if (b == 0) throw divByZero(); return b == -1 ? -a : a / b; }
    public static long lrem(long a, long b) { if (b == 0) throw divByZero(); return b == -1 ? 0 : a % b; }
    private static ArithmeticException divByZero() { return new ArithmeticException("/ by zero"); }

    // CheerpJ reports a negative array size as an ArithmeticException
    public static int size(int n) { if (n < 0) throw new NegativeArraySizeException(Integer.toString(n)); return n; }

    private static void index(int i, int length) {
      if (i < 0 || i >= length) throw new ArrayIndexOutOfBoundsException("Index " + i + " out of bounds for length " + length);
    }
    public static void check(int[] a, int i) { index(i, a.length); }
    public static void check(long[] a, int i) { index(i, a.length); }
    public static void check(float[] a, int i) { index(i, a.length); }
    public static void check(double[] a, int i) { index(i, a.length); }
    public static void check(Object[] a, int i) { index(i, a.length); }
    public static void check(char[] a, int i) { index(i, a.length); }
    public static void check(short[] a, int i) { index(i, a.length); }
    public static void check(Object a, int i) {  // byte[] or boolean[] (both use baload/bastore)
      index(i, a instanceof byte[] ? ((byte[]) a).length : ((boolean[]) a).length);
    }

    public static void store(int[] a, int i, int v) { index(i, a.length); a[i] = v; }
    public static void store(long[] a, int i, long v) { index(i, a.length); a[i] = v; }
    public static void store(float[] a, int i, float v) { index(i, a.length); a[i] = v; }
    public static void store(double[] a, int i, double v) { index(i, a.length); a[i] = v; }
    public static void store(Object[] a, int i, Object v) {
      index(i, a.length);
      // CheerpJ reports a failed array store check as an ArithmeticException
      if (v != null && !a.getClass().getComponentType().isInstance(v)) throw new ArrayStoreException(v.getClass().getName());
      a[i] = v;
    }
    public static void store(char[] a, int i, char v) { index(i, a.length); a[i] = v; }
    public static void store(short[] a, int i, short v) { index(i, a.length); a[i] = v; }
    public static void store(Object a, int i, int v) {
      if (a instanceof byte[]) { byte[] b = (byte[]) a; index(i, b.length); b[i] = (byte) v; }
      else { boolean[] b = (boolean[]) a; index(i, b.length); b[i] = (v & 1) != 0; }
    }
  }
}
