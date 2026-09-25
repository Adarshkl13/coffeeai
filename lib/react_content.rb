module ReactContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Introduction to React</h1>
        </div>
        <p class="lc-lead">React is a JavaScript library for building user interfaces. It lets you compose complex UIs from small, reusable pieces called <strong>components</strong>.</p>
        <div class="lc-card">
          <h3>What is JSX?</h3>
          <p>JSX is a syntax extension that lets you write HTML-like code inside JavaScript:</p>
          <div class="lc-code">const element = &lt;h1&gt;Hello, world!&lt;/h1&gt;;</div>
          <p>Babel compiles JSX to <code>React.createElement()</code> calls behind the scenes.</p>
        </div>
        <div class="lc-card">
          <h3>Rendering to the DOM</h3>
          <div class="lc-code">const root = ReactDOM.createRoot(document.getElementById('root'));<br>root.render(&lt;h1&gt;Hello, React!&lt;/h1&gt;);</div>
        </div>
        <div class="lc-card">
          <h3>JSX Rules</h3>
          <ul class="lc-list">
            <li>Return a single root element (or use <code>&lt;&gt;...&lt;/&gt;</code> fragment)</li>
            <li>All tags must be closed: <code>&lt;br /&gt;</code>, <code>&lt;img /&gt;</code></li>
            <li>Use <code>className</code> instead of <code>class</code></li>
            <li>JavaScript expressions go inside <code>{ }</code></li>
            <li>Use <code>camelCase</code> for event handlers: <code>onClick</code>, <code>onChange</code></li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In this simulator, React 18 + Babel standalone runs inside the preview iframe. Destructure hooks from React: <code>const {'{ useState }'} = React;</code>
        </div>
      HTML
      starter_code: <<~'JSX'
        const root = ReactDOM.createRoot(document.getElementById('root'));

        // JSX lets you write HTML-like syntax in JavaScript
        const name = "React Learner";
        const today = new Date().toLocaleDateString();

        root.render(
          <div style={{ fontFamily: 'sans-serif', padding: '2rem', maxWidth: '500px' }}>
            <h1 style={{ color: '#61dafb' }}>⚛️ Hello, {name}!</h1>
            <p>Welcome to React. Today is <strong>{today}</strong>.</p>
            <p>JSX expressions: <code>2 + 2 = {2 + 2}</code></p>
            <ul>
              <li>JSX looks like HTML</li>
              <li>But it's actually JavaScript</li>
              <li>Compiled by Babel</li>
            </ul>
          </div>
        );
      JSX
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Functional Components</h1>
        </div>
        <p class="lc-lead">Components are the building blocks of React. A functional component is simply a JavaScript function that returns JSX.</p>
        <div class="lc-card">
          <h3>Defining a Component</h3>
          <div class="lc-code">function Greeting() {<br>  return &lt;h1&gt;Hello, World!&lt;/h1&gt;;<br>}<br><br>// Arrow function style<br>const Greeting = () =&gt; &lt;h1&gt;Hello, World!&lt;/h1&gt;;</div>
        </div>
        <div class="lc-card">
          <h3>Composing Components</h3>
          <div class="lc-code">function Header() { return &lt;h1&gt;My App&lt;/h1&gt;; }<br>function Footer() { return &lt;p&gt;© 2024&lt;/p&gt;; }<br><br>function App() {<br>  return (<br>    &lt;&gt;<br>      &lt;Header /&gt;<br>      &lt;main&gt;Content here&lt;/main&gt;<br>      &lt;Footer /&gt;<br>    &lt;/&gt;<br>  );<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Component Rules</h3>
          <ul class="lc-list">
            <li>Component names <strong>must start with a capital letter</strong></li>
            <li>Must return JSX (or null)</li>
            <li>Can return only one root element</li>
            <li>Use fragments <code>&lt;&gt;...&lt;/&gt;</code> to avoid extra DOM nodes</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep components small and focused on one responsibility — this makes them reusable and testable.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { } = React;

        function Avatar({ initials, color }) {
          return (
            <div style={{
              width: 50, height: 50, borderRadius: '50%',
              background: color, color: 'white',
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontWeight: 'bold', fontSize: '1.2rem'
            }}>
              {initials}
            </div>
          );
        }

        function UserCard({ name, role, initials, color }) {
          return (
            <div style={{ display:'flex', alignItems:'center', gap:'1rem',
              padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8, marginBottom:12 }}>
              <Avatar initials={initials} color={color} />
              <div>
                <div style={{ fontWeight:'bold' }}>{name}</div>
                <div style={{ color:'#6b7280', fontSize:'0.9rem' }}>{role}</div>
              </div>
            </div>
          );
        }

        function App() {
          return (
            <div style={{ fontFamily:'sans-serif', padding:'2rem', maxWidth:400 }}>
              <h2 style={{ marginBottom:'1rem' }}>Team Members</h2>
              <UserCard name="Alice Smith"  role="Engineer"  initials="AS" color="#6366f1" />
              <UserCard name="Bob Jones"    role="Designer"  initials="BJ" color="#10b981" />
              <UserCard name="Carol White"  role="Manager"   initials="CW" color="#f59e0b" />
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Props</h1>
        </div>
        <p class="lc-lead">Props (short for properties) let you pass data from a parent component to a child. They make components reusable and configurable.</p>
        <div class="lc-card">
          <h3>Passing and Receiving Props</h3>
          <div class="lc-code">// Parent passes props<br>&lt;Button color="blue" label="Click me" /&gt;<br><br>// Child receives as object<br>function Button({ color, label }) {<br>  return &lt;button style={{ background: color }}&gt;{label}&lt;/button&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Default Props</h3>
          <div class="lc-code">function Button({ color = "gray", label = "Button" }) {<br>  return &lt;button style={{ background: color }}&gt;{label}&lt;/button&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>children Prop</h3>
          <div class="lc-code">function Card({ children }) {<br>  return &lt;div className="card"&gt;{children}&lt;/div&gt;;<br>}<br><br>// Usage:<br>&lt;Card&gt;<br>  &lt;h2&gt;Title&lt;/h2&gt;<br>  &lt;p&gt;Content&lt;/p&gt;<br>&lt;/Card&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Props are Read-Only</h3>
          <p>Never modify props directly. Components must act like pure functions with respect to their props — same input always produces same output.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Spread props with <code>...props</code> to forward all props to a child: <code>&lt;input {...props} /&gt;</code>
        </div>
      HTML
      starter_code: <<~'JSX'
        const { } = React;

        function Badge({ text, variant = 'primary' }) {
          const colors = {
            primary: '#6366f1', success: '#10b981',
            danger: '#ef4444', warning: '#f59e0b'
          };
          return (
            <span style={{
              background: colors[variant], color: 'white',
              padding: '2px 10px', borderRadius: 12,
              fontSize: '0.8rem', fontWeight: 'bold'
            }}>
              {text}
            </span>
          );
        }

        function CourseCard({ title, instructor, level, lessons, children }) {
          return (
            <div style={{ border:'1px solid #e5e7eb', borderRadius:10, padding:'1.2rem',
              marginBottom:'1rem', fontFamily:'sans-serif' }}>
              <div style={{ display:'flex', justifyContent:'space-between', marginBottom:8 }}>
                <h3 style={{ margin:0 }}>{title}</h3>
                <Badge text={level} variant={level === 'Beginner' ? 'success' : level === 'Advanced' ? 'danger' : 'warning'} />
              </div>
              <p style={{ color:'#6b7280', margin:'4px 0' }}>👤 {instructor} · 📚 {lessons} lessons</p>
              {children}
            </div>
          );
        }

        function App() {
          return (
            <div style={{ maxWidth:480, padding:'2rem' }}>
              <h2>Course Catalog</h2>
              <CourseCard title="React Fundamentals" instructor="Alice" level="Beginner" lessons={20}>
                <p style={{ fontSize:'0.9rem', color:'#374151' }}>Learn the core concepts of React from scratch.</p>
              </CourseCard>
              <CourseCard title="Advanced Hooks" instructor="Bob" level="Advanced" lessons={15} />
              <CourseCard title="React + TypeScript" instructor="Carol" level="Intermediate" lessons={18} />
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">State with useState</h1>
        </div>
        <p class="lc-lead">State is data that changes over time. When state changes, React automatically re-renders the component. The <code>useState</code> hook is the primary way to add state to functional components.</p>
        <div class="lc-card">
          <h3>useState Syntax</h3>
          <div class="lc-code">const { useState } = React;<br><br>function Counter() {<br>  const [count, setCount] = useState(0);  // initial value = 0<br><br>  return (<br>    &lt;button onClick={() =&gt; setCount(count + 1)}&gt;<br>      Count: {count}<br>    &lt;/button&gt;<br>  );<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Key Points</h3>
          <ul class="lc-list">
            <li><code>useState(initialValue)</code> returns <code>[value, setter]</code></li>
            <li>Call the setter to update state and trigger re-render</li>
            <li>Never mutate state directly — always use the setter</li>
            <li>State updates may be batched for performance</li>
            <li>Use functional updates when new state depends on old: <code>setCount(c => c + 1)</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Object State</h3>
          <div class="lc-code">const [user, setUser] = useState({ name: '', age: 0 });<br><br>// Always spread to preserve other fields<br>setUser(prev =&gt; ({ ...prev, name: 'Alice' }));</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Each component instance has its own independent state — two <code>&lt;Counter /&gt;</code> components don't share their count.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        function Counter() {
          const [count, setCount] = useState(0);
          return (
            <div style={{ textAlign:'center', padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8, marginBottom:'1rem' }}>
              <h3 style={{ margin:'0 0 0.5rem' }}>Counter</h3>
              <div style={{ fontSize:'3rem', fontWeight:'bold', color:'#6366f1' }}>{count}</div>
              <div style={{ display:'flex', gap:8, justifyContent:'center', marginTop:'0.5rem' }}>
                <button onClick={() => setCount(c => c - 1)} style={{ padding:'6px 16px', cursor:'pointer' }}>-</button>
                <button onClick={() => setCount(0)} style={{ padding:'6px 16px', cursor:'pointer' }}>Reset</button>
                <button onClick={() => setCount(c => c + 1)} style={{ padding:'6px 16px', cursor:'pointer' }}>+</button>
              </div>
            </div>
          );
        }

        function ToggleSwitch({ label }) {
          const [on, setOn] = useState(false);
          return (
            <div style={{ display:'flex', alignItems:'center', gap:'1rem', padding:'1rem',
              border:'1px solid #e5e7eb', borderRadius:8, marginBottom:'1rem' }}>
              <button onClick={() => setOn(v => !v)}
                style={{ background: on ? '#10b981' : '#9ca3af', color:'white', border:'none',
                  padding:'6px 16px', borderRadius:20, cursor:'pointer', fontWeight:'bold' }}>
                {on ? 'ON' : 'OFF'}
              </button>
              <span style={{ fontFamily:'sans-serif' }}>{label}</span>
            </div>
          );
        }

        function App() {
          return (
            <div style={{ fontFamily:'sans-serif', padding:'2rem', maxWidth:360 }}>
              <h2>useState Examples</h2>
              <Counter />
              <ToggleSwitch label="Dark Mode" />
              <ToggleSwitch label="Notifications" />
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Event Handling</h1>
        </div>
        <p class="lc-lead">React uses synthetic events — a cross-browser wrapper around native browser events. Event handlers are camelCase and passed as functions, not strings.</p>
        <div class="lc-card">
          <h3>Basic Event Handlers</h3>
          <div class="lc-code">// onClick, onChange, onSubmit, onKeyDown, onMouseEnter...<br>&lt;button onClick={handleClick}&gt;Click&lt;/button&gt;<br>&lt;input onChange={e =&gt; setValue(e.target.value)} /&gt;<br>&lt;form onSubmit={handleSubmit}&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Passing Arguments</h3>
          <div class="lc-code">// Wrap in arrow function to pass arguments<br>&lt;button onClick={() =&gt; handleDelete(item.id)}&gt;Delete&lt;/button&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Preventing Default Behavior</h3>
          <div class="lc-code">function handleSubmit(e) {<br>  e.preventDefault();  // Stop page reload<br>  // process form data<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Common Events</h3>
          <table class="lc-table">
            <thead><tr><th>Event</th><th>Trigger</th></tr></thead>
            <tbody>
              <tr><td>onClick</td><td>Mouse click</td></tr>
              <tr><td>onChange</td><td>Input value changes</td></tr>
              <tr><td>onSubmit</td><td>Form submission</td></tr>
              <tr><td>onKeyDown/Up</td><td>Key pressed/released</td></tr>
              <tr><td>onFocus/Blur</td><td>Element focus/blur</td></tr>
              <tr><td>onMouseEnter/Leave</td><td>Mouse hover</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never call the handler immediately — pass the function reference: <code>onClick={handleClick}</code> not <code>onClick={handleClick()}</code>
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        function ColorPicker() {
          const [color, setColor] = useState('#6366f1');
          const [hovered, setHovered] = useState(false);
          const colors = ['#6366f1','#10b981','#ef4444','#f59e0b','#3b82f6','#ec4899'];
          return (
            <div style={{ fontFamily:'sans-serif', padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8, marginBottom:'1rem' }}>
              <h4>Color Picker (onClick)</h4>
              <div style={{ display:'flex', gap:8, flexWrap:'wrap', marginBottom:'1rem' }}>
                {colors.map(c => (
                  <div key={c} onClick={() => setColor(c)}
                    style={{ width:36, height:36, borderRadius:'50%', background:c, cursor:'pointer',
                      border: c === color ? '3px solid #000' : '3px solid transparent' }} />
                ))}
              </div>
              <div style={{ background:color, color:'white', padding:'1rem', borderRadius:8,
                textAlign:'center', fontWeight:'bold' }}>
                Selected: {color}
              </div>
            </div>
          );
        }

        function SearchBox() {
          const [query, setQuery] = useState('');
          const items = ['React', 'JavaScript', 'Python', 'Bootstrap', 'PostgreSQL', 'Ruby'];
          const filtered = items.filter(i => i.toLowerCase().includes(query.toLowerCase()));
          return (
            <div style={{ fontFamily:'sans-serif', padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8 }}>
              <h4>Live Search (onChange)</h4>
              <input value={query} onChange={e => setQuery(e.target.value)}
                placeholder="Search courses..." style={{ width:'100%', padding:'8px', borderRadius:6,
                  border:'1px solid #d1d5db', marginBottom:'0.5rem' }} />
              <ul style={{ margin:0, paddingLeft:'1.2rem' }}>
                {filtered.map(i => <li key={i}>{i}</li>)}
              </ul>
            </div>
          );
        }

        function App() {
          return <div style={{ maxWidth:380, padding:'2rem' }}><h2>Events</h2><ColorPicker /><SearchBox /></div>;
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Lists and Keys</h1>
        </div>
        <p class="lc-lead">Render lists by mapping over arrays and returning JSX. Each item needs a unique <code>key</code> prop to help React efficiently update the DOM.</p>
        <div class="lc-card">
          <h3>Rendering a List</h3>
          <div class="lc-code">const fruits = ['Apple', 'Banana', 'Cherry'];<br><br>function FruitList() {<br>  return (<br>    &lt;ul&gt;<br>      {fruits.map(fruit =&gt; (<br>        &lt;li key={fruit}&gt;{fruit}&lt;/li&gt;<br>      ))}<br>    &lt;/ul&gt;<br>  );<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Why Keys Matter</h3>
          <ul class="lc-list">
            <li>Keys help React identify which items changed, were added, or removed</li>
            <li>Keys must be <strong>unique among siblings</strong> (not globally unique)</li>
            <li>Use stable IDs from your data — not array indexes (if list can reorder)</li>
            <li>Keys are not passed as props — the child can't access <code>props.key</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Filtering and Sorting</h3>
          <div class="lc-code">const active = users.filter(u =&gt; u.active);<br>const sorted = [...users].sort((a, b) =&gt; a.name.localeCompare(b.name));</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If your data has no natural ID, use a library like <code>uuid</code> or set IDs when creating data — not inside the render.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        const ALL_COURSES = [
          { id: 1, title: 'React', category: 'Frontend', level: 'Intermediate', rating: 4.8 },
          { id: 2, title: 'Python', category: 'Backend', level: 'Beginner', rating: 4.9 },
          { id: 3, title: 'Bootstrap', category: 'Frontend', level: 'Beginner', rating: 4.6 },
          { id: 4, title: 'PostgreSQL', category: 'Database', level: 'Intermediate', rating: 4.7 },
          { id: 5, title: 'JavaScript', category: 'Frontend', level: 'Beginner', rating: 4.8 },
          { id: 6, title: 'Ruby', category: 'Backend', level: 'Intermediate', rating: 4.5 },
        ];

        function CourseRow({ course }) {
          const colors = { Frontend:'#6366f1', Backend:'#10b981', Database:'#f59e0b' };
          return (
            <tr>
              <td style={{ padding:'10px 12px', fontWeight:'bold' }}>{course.title}</td>
              <td style={{ padding:'10px 12px' }}>
                <span style={{ background: colors[course.category], color:'white',
                  padding:'2px 8px', borderRadius:10, fontSize:'0.8rem' }}>
                  {course.category}
                </span>
              </td>
              <td style={{ padding:'10px 12px', color:'#6b7280' }}>{course.level}</td>
              <td style={{ padding:'10px 12px' }}>⭐ {course.rating}</td>
            </tr>
          );
        }

        function App() {
          const [filter, setFilter] = useState('All');
          const categories = ['All', 'Frontend', 'Backend', 'Database'];
          const filtered = filter === 'All' ? ALL_COURSES : ALL_COURSES.filter(c => c.category === filter);

          return (
            <div style={{ fontFamily:'sans-serif', padding:'1.5rem' }}>
              <h2>Courses ({filtered.length})</h2>
              <div style={{ display:'flex', gap:8, marginBottom:'1rem' }}>
                {categories.map(cat => (
                  <button key={cat} onClick={() => setFilter(cat)}
                    style={{ padding:'4px 12px', borderRadius:20, cursor:'pointer',
                      background: filter===cat ? '#6366f1' : '#e5e7eb',
                      color: filter===cat ? 'white' : '#374151', border:'none' }}>
                    {cat}
                  </button>
                ))}
              </div>
              <table style={{ width:'100%', borderCollapse:'collapse', border:'1px solid #e5e7eb' }}>
                <thead style={{ background:'#f9fafb' }}>
                  <tr>
                    {['Title','Category','Level','Rating'].map(h => (
                      <th key={h} style={{ padding:'10px 12px', textAlign:'left', fontWeight:'600' }}>{h}</th>
                    ))}
                  </tr>
                </thead>
                <tbody>
                  {filtered.map(course => <CourseRow key={course.id} course={course} />)}
                </tbody>
              </table>
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Conditional Rendering</h1>
        </div>
        <p class="lc-lead">React lets you conditionally render components and elements using JavaScript operators — if statements, ternaries, and logical AND.</p>
        <div class="lc-card">
          <h3>Methods</h3>
          <div class="lc-code">// 1. if statement (outside JSX)<br>if (isLoggedIn) return &lt;Dashboard /&gt;;<br>return &lt;Login /&gt;;<br><br>// 2. Ternary (inside JSX)<br>{isLoggedIn ? &lt;Dashboard /&gt; : &lt;Login /&gt;}<br><br>// 3. Logical AND (render or nothing)<br>{hasError &amp;&amp; &lt;ErrorMessage /&gt;}<br><br>// 4. Nullish — render nothing<br>{showBanner ? &lt;Banner /&gt; : null}</div>
        </div>
        <div class="lc-card">
          <h3>Conditional Classes / Styles</h3>
          <div class="lc-code">// className<br>&lt;div className={`btn ${active ? 'btn-active' : ''}`}&gt;<br><br>// inline style<br>&lt;div style={{ color: error ? 'red' : 'green' }}&gt;</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Avoid deeply nested ternaries — extract to a variable or helper function to keep JSX readable.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        function StatusBadge({ status }) {
          const config = {
            active:  { label: '● Active',   bg: '#d1fae5', color: '#065f46' },
            pending: { label: '◷ Pending',  bg: '#fef3c7', color: '#92400e' },
            inactive:{ label: '○ Inactive', bg: '#fee2e2', color: '#991b1b' },
          };
          const { label, bg, color } = config[status] || config.inactive;
          return <span style={{ background:bg, color, padding:'3px 10px', borderRadius:12, fontSize:'0.85rem', fontWeight:'bold' }}>{label}</span>;
        }

        function LoginGate() {
          const [loggedIn, setLoggedIn] = useState(false);
          const [role, setRole] = useState('user');
          return (
            <div style={{ border:'1px solid #e5e7eb', borderRadius:8, padding:'1rem', marginBottom:'1rem' }}>
              <h4 style={{ marginTop:0 }}>Auth Gate</h4>
              {loggedIn ? (
                <div>
                  <p>✅ Welcome back! You are logged in as <strong>{role}</strong>.</p>
                  {role === 'admin' && <p style={{ color:'#6366f1' }}>🛡️ Admin panel visible</p>}
                  <button onClick={() => setLoggedIn(false)} style={{ padding:'6px 14px', cursor:'pointer' }}>Log Out</button>
                </div>
              ) : (
                <div>
                  <p>🔒 Please log in to continue.</p>
                  <select value={role} onChange={e => setRole(e.target.value)} style={{ marginRight:8 }}>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                  </select>
                  <button onClick={() => setLoggedIn(true)} style={{ padding:'6px 14px', cursor:'pointer', background:'#6366f1', color:'white', border:'none', borderRadius:6 }}>Log In</button>
                </div>
              )}
            </div>
          );
        }

        function App() {
          const users = [
            { id:1, name:'Alice', status:'active' },
            { id:2, name:'Bob',   status:'pending' },
            { id:3, name:'Carol', status:'inactive' },
          ];
          return (
            <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}>
              <h2>Conditional Rendering</h2>
              <LoginGate />
              <h4>User Statuses</h4>
              {users.map(u => (
                <div key={u.id} style={{ display:'flex', justifyContent:'space-between', alignItems:'center', padding:'8px 0', borderBottom:'1px solid #f3f4f6' }}>
                  <span>{u.name}</span>
                  <StatusBadge status={u.status} />
                </div>
              ))}
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useEffect Hook</h1>
        </div>
        <p class="lc-lead"><code>useEffect</code> runs side effects after rendering — fetching data, setting up subscriptions, updating the document title, and more.</p>
        <div class="lc-card">
          <h3>Syntax</h3>
          <div class="lc-code">const { useEffect } = React;<br><br>useEffect(() =&gt; {<br>  // side effect code<br>  return () =&gt; {<br>    // cleanup (optional)<br>  };<br>}, [dependencies]); // dependency array</div>
        </div>
        <div class="lc-card">
          <h3>Dependency Array</h3>
          <table class="lc-table">
            <thead><tr><th>Array</th><th>When it runs</th></tr></thead>
            <tbody>
              <tr><td>No array</td><td>After every render</td></tr>
              <tr><td>[] (empty)</td><td>Once on mount only</td></tr>
              <tr><td>[count]</td><td>When count changes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Use Cases</h3>
          <div class="lc-code">// Document title<br>useEffect(() =&gt; {<br>  document.title = `You have ${count} messages`;<br>}, [count]);<br><br>// Timer<br>useEffect(() =&gt; {<br>  const id = setInterval(() =&gt; setTime(t =&gt; t + 1), 1000);<br>  return () =&gt; clearInterval(id);  // cleanup!<br>}, []);</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always clean up subscriptions, timers, and event listeners in the return function to prevent memory leaks.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState, useEffect } = React;

        function Clock() {
          const [time, setTime] = useState(new Date().toLocaleTimeString());
          useEffect(() => {
            const id = setInterval(() => setTime(new Date().toLocaleTimeString()), 1000);
            return () => clearInterval(id); // cleanup on unmount
          }, []);
          return (
            <div style={{ textAlign:'center', padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8, marginBottom:'1rem' }}>
              <div style={{ fontSize:'2.5rem', fontWeight:'bold', fontFamily:'monospace', color:'#6366f1' }}>{time}</div>
              <div style={{ color:'#6b7280', fontSize:'0.9rem' }}>Live Clock — updates every second</div>
            </div>
          );
        }

        function WindowSize() {
          const [size, setSize] = useState({ w: window.innerWidth, h: window.innerHeight });
          useEffect(() => {
            const handler = () => setSize({ w: window.innerWidth, h: window.innerHeight });
            window.addEventListener('resize', handler);
            return () => window.removeEventListener('resize', handler);
          }, []);
          return (
            <div style={{ padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8, marginBottom:'1rem' }}>
              <h4 style={{ margin:'0 0 0.5rem' }}>Window Size (resize to see)</h4>
              <p style={{ margin:0, fontFamily:'monospace' }}>Width: {size.w}px · Height: {size.h}px</p>
            </div>
          );
        }

        function TitleUpdater() {
          const [name, setName] = useState('');
          useEffect(() => { document.title = name ? `Hello, ${name}!` : 'React App'; }, [name]);
          return (
            <div style={{ padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8 }}>
              <h4 style={{ margin:'0 0 0.5rem' }}>Document Title (check tab)</h4>
              <input value={name} onChange={e => setName(e.target.value)}
                placeholder="Type your name..." style={{ padding:'6px 10px', borderRadius:6, border:'1px solid #d1d5db', width:'100%' }} />
            </div>
          );
        }

        function App() {
          return (
            <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}>
              <h2>useEffect Examples</h2>
              <Clock /><WindowSize /><TitleUpdater />
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Forms and Controlled Components</h1>
        </div>
        <p class="lc-lead">In React, form inputs are "controlled" — their value is driven by state. React is always the single source of truth for form data.</p>
        <div class="lc-card">
          <h3>Controlled Input Pattern</h3>
          <div class="lc-code">const [email, setEmail] = useState('');<br><br>&lt;input<br>  value={email}<br>  onChange={e =&gt; setEmail(e.target.value)}<br>/&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Form Submission</h3>
          <div class="lc-code">function handleSubmit(e) {<br>  e.preventDefault(); // prevent page reload<br>  console.log({ email, password });<br>}<br><br>&lt;form onSubmit={handleSubmit}&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Common Input Types</h3>
          <div class="lc-code">// Text, email, password<br>&lt;input type="text" value={val} onChange={e =&gt; setVal(e.target.value)} /&gt;<br><br>// Select<br>&lt;select value={sel} onChange={e =&gt; setSel(e.target.value)}&gt;<br>  &lt;option value="a"&gt;Option A&lt;/option&gt;<br>&lt;/select&gt;<br><br>// Checkbox<br>&lt;input type="checkbox" checked={agreed} onChange={e =&gt; setAgreed(e.target.checked)} /&gt;<br><br>// Textarea<br>&lt;textarea value={msg} onChange={e =&gt; setMsg(e.target.value)} /&gt;</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Store multiple form fields in one object: <code>const [form, setForm] = useState({'{ name: "", email: "" }'})</code> and update with <code>setForm(f =&gt; {'({ ...f, name: val })'})</code>
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        const inp = { padding:'8px 12px', borderRadius:6, border:'1px solid #d1d5db', width:'100%', boxSizing:'border-box' };
        const lbl = { display:'block', marginBottom:4, fontWeight:'600', fontSize:'0.9rem' };

        function SignupForm() {
          const [form, setForm] = useState({ name:'', email:'', role:'developer', agree: false });
          const [submitted, setSubmitted] = useState(null);
          const update = (field, val) => setForm(f => ({ ...f, [field]: val }));

          const handleSubmit = (e) => {
            e.preventDefault();
            setSubmitted(form);
          };

          if (submitted) return (
            <div style={{ padding:'1rem', background:'#d1fae5', borderRadius:8 }}>
              <h4 style={{ color:'#065f46' }}>✅ Registration Complete!</h4>
              <p><strong>Name:</strong> {submitted.name}</p>
              <p><strong>Email:</strong> {submitted.email}</p>
              <p><strong>Role:</strong> {submitted.role}</p>
              <button onClick={() => setSubmitted(null)} style={{ padding:'6px 14px', cursor:'pointer' }}>Register Another</button>
            </div>
          );

          return (
            <form onSubmit={handleSubmit}>
              <div style={{ marginBottom:'1rem' }}>
                <label style={lbl}>Full Name</label>
                <input style={inp} value={form.name} onChange={e => update('name', e.target.value)} placeholder="Alice Smith" required />
              </div>
              <div style={{ marginBottom:'1rem' }}>
                <label style={lbl}>Email</label>
                <input style={inp} type="email" value={form.email} onChange={e => update('email', e.target.value)} placeholder="alice@example.com" required />
              </div>
              <div style={{ marginBottom:'1rem' }}>
                <label style={lbl}>Role</label>
                <select style={inp} value={form.role} onChange={e => update('role', e.target.value)}>
                  <option value="developer">Developer</option>
                  <option value="designer">Designer</option>
                  <option value="manager">Manager</option>
                </select>
              </div>
              <div style={{ marginBottom:'1rem', display:'flex', alignItems:'center', gap:8 }}>
                <input type="checkbox" id="agree" checked={form.agree} onChange={e => update('agree', e.target.checked)} />
                <label htmlFor="agree">I agree to the terms and conditions</label>
              </div>
              <button type="submit" disabled={!form.agree}
                style={{ width:'100%', padding:'10px', background: form.agree ? '#6366f1' : '#9ca3af',
                  color:'white', border:'none', borderRadius:6, cursor: form.agree ? 'pointer' : 'not-allowed', fontWeight:'bold' }}>
                Create Account
              </button>
            </form>
          );
        }

        function App() {
          return <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}><h2>Signup Form</h2><SignupForm /></div>;
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Lifting State Up</h1>
        </div>
        <p class="lc-lead">When multiple components need to share state, move that state up to their closest common ancestor and pass it down via props. This is called "lifting state up".</p>
        <div class="lc-card">
          <h3>The Pattern</h3>
          <div class="lc-code">function Parent() {<br>  const [value, setValue] = useState('');<br>  return (<br>    &lt;&gt;<br>      &lt;InputChild value={value} onChange={setValue} /&gt;<br>      &lt;DisplayChild value={value} /&gt;<br>    &lt;/&gt;<br>  );<br>}</div>
        </div>
        <div class="lc-card">
          <h3>When to Lift State</h3>
          <ul class="lc-list">
            <li>Two sibling components need access to the same data</li>
            <li>A parent needs to respond to a child's action</li>
            <li>Multiple components need to stay in sync</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Callbacks as Props</h3>
          <div class="lc-code">// Child calls parent's handler<br>function Child({ onAdd }) {<br>  return &lt;button onClick={() =&gt; onAdd('new item')}&gt;Add&lt;/button&gt;;<br>}<br><br>// Parent owns the state<br>function Parent() {<br>  const [items, setItems] = useState([]);<br>  return &lt;Child onAdd={item =&gt; setItems(prev =&gt; [...prev, item])} /&gt;;<br>}</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Data flows <em>down</em> (props), events flow <em>up</em> (callbacks). This is React's one-way data flow.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        function TaskInput({ onAdd }) {
          const [text, setText] = useState('');
          const submit = (e) => {
            e.preventDefault();
            if (text.trim()) { onAdd(text.trim()); setText(''); }
          };
          return (
            <form onSubmit={submit} style={{ display:'flex', gap:8, marginBottom:'1rem' }}>
              <input value={text} onChange={e => setText(e.target.value)}
                placeholder="Add a task..." style={{ flex:1, padding:'8px 12px', borderRadius:6, border:'1px solid #d1d5db' }} />
              <button type="submit" style={{ padding:'8px 16px', background:'#6366f1', color:'white', border:'none', borderRadius:6, cursor:'pointer' }}>Add</button>
            </form>
          );
        }

        function TaskStats({ tasks }) {
          const done = tasks.filter(t => t.done).length;
          return (
            <div style={{ display:'flex', gap:'1rem', padding:'0.75rem', background:'#f9fafb', borderRadius:8, marginBottom:'1rem', fontSize:'0.9rem' }}>
              <span>📋 Total: <strong>{tasks.length}</strong></span>
              <span>✅ Done: <strong>{done}</strong></span>
              <span>⏳ Left: <strong>{tasks.length - done}</strong></span>
            </div>
          );
        }

        function TaskList({ tasks, onToggle, onDelete }) {
          if (tasks.length === 0) return <p style={{ color:'#9ca3af', textAlign:'center' }}>No tasks yet. Add one above!</p>;
          return (
            <ul style={{ listStyle:'none', padding:0, margin:0 }}>
              {tasks.map(task => (
                <li key={task.id} style={{ display:'flex', alignItems:'center', gap:8, padding:'10px 0', borderBottom:'1px solid #f3f4f6' }}>
                  <input type="checkbox" checked={task.done} onChange={() => onToggle(task.id)} />
                  <span style={{ flex:1, textDecoration: task.done ? 'line-through' : 'none', color: task.done ? '#9ca3af' : '#111' }}>{task.text}</span>
                  <button onClick={() => onDelete(task.id)} style={{ background:'none', border:'none', cursor:'pointer', color:'#ef4444', fontSize:'1.1rem' }}>×</button>
                </li>
              ))}
            </ul>
          );
        }

        function App() {
          const [tasks, setTasks] = useState([
            { id: 1, text: 'Learn React hooks', done: true },
            { id: 2, text: 'Build a todo app', done: false },
          ]);
          const addTask  = text  => setTasks(t => [...t, { id: Date.now(), text, done: false }]);
          const toggle   = id   => setTasks(t => t.map(x => x.id === id ? {...x, done: !x.done} : x));
          const deleteIt = id   => setTasks(t => t.filter(x => x.id !== id));

          return (
            <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}>
              <h2>📝 Task Manager</h2>
              <TaskInput onAdd={addTask} />
              <TaskStats tasks={tasks} />
              <TaskList tasks={tasks} onToggle={toggle} onDelete={deleteIt} />
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useContext — Avoid Prop Drilling</h1>
        </div>
        <p class="lc-lead">Context lets you pass data through the component tree without passing props at every level. Perfect for themes, user authentication, and language settings.</p>
        <div class="lc-card">
          <h3>Creating and Using Context</h3>
          <div class="lc-code">const { createContext, useContext, useState } = React;<br><br>// 1. Create context<br>const ThemeContext = createContext('light');<br><br>// 2. Provide it<br>function App() {<br>  return (<br>    &lt;ThemeContext.Provider value="dark"&gt;<br>      &lt;Page /&gt;<br>    &lt;/ThemeContext.Provider&gt;<br>  );<br>}<br><br>// 3. Consume anywhere in the tree<br>function Button() {<br>  const theme = useContext(ThemeContext);<br>  return &lt;button className={`btn-${theme}`}&gt;Click&lt;/button&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Context vs Props</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Props</th><th>Context</th></tr></thead>
            <tbody>
              <tr><td>Best for</td><td>Direct parent→child data</td><td>Global/shared data</td></tr>
              <tr><td>Drilling</td><td>Can get tedious</td><td>Skips levels</td></tr>
              <tr><td>Reusability</td><td>Higher (explicit)</td><td>Lower (implicit)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Don't overuse context — it makes components harder to reuse. Use it for truly global state like auth, theme, or locale.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { createContext, useContext, useState } = React;

        // 1. Create context with default value
        const ThemeContext = createContext({ theme: 'light', toggle: () => {} });

        const themes = {
          light: { bg:'#ffffff', text:'#111827', card:'#f9fafb', border:'#e5e7eb', accent:'#6366f1' },
          dark:  { bg:'#111827', text:'#f9fafb', card:'#1f2937', border:'#374151', accent:'#818cf8' },
        };

        function ThemeButton() {
          const { theme, toggle } = useContext(ThemeContext);
          const t = themes[theme];
          return (
            <button onClick={toggle} style={{ padding:'8px 16px', borderRadius:8, cursor:'pointer',
              background:t.accent, color:'white', border:'none', fontWeight:'bold' }}>
              {theme === 'light' ? '🌙 Dark Mode' : '☀️ Light Mode'}
            </button>
          );
        }

        function Card({ title, content }) {
          const { theme } = useContext(ThemeContext);
          const t = themes[theme];
          return (
            <div style={{ background:t.card, border:`1px solid ${t.border}`, borderRadius:10,
              padding:'1rem', marginBottom:'0.75rem', color:t.text }}>
              <h4 style={{ margin:'0 0 0.5rem', color:t.accent }}>{title}</h4>
              <p style={{ margin:0, opacity:0.8 }}>{content}</p>
            </div>
          );
        }

        function Page() {
          const { theme } = useContext(ThemeContext);
          const t = themes[theme];
          return (
            <div style={{ minHeight:'100vh', background:t.bg, color:t.text, padding:'2rem', fontFamily:'sans-serif', transition:'all 0.3s' }}>
              <div style={{ display:'flex', justifyContent:'space-between', alignItems:'center', marginBottom:'1.5rem' }}>
                <h2 style={{ margin:0 }}>⚛️ My App ({theme} mode)</h2>
                <ThemeButton />
              </div>
              <Card title="useContext" content="Context provides a way to pass data through the component tree without prop drilling." />
              <Card title="ThemeContext" content="This card reads the current theme from context — no props needed!" />
              <Card title="No Prop Drilling" content="ThemeButton, Card, and Page all read from the same context without explicit prop passing." />
            </div>
          );
        }

        function App() {
          const [theme, setTheme] = useState('light');
          const toggle = () => setTheme(t => t === 'light' ? 'dark' : 'light');
          return (
            <ThemeContext.Provider value={{ theme, toggle }}>
              <Page />
            </ThemeContext.Provider>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useRef Hook</h1>
        </div>
        <p class="lc-lead"><code>useRef</code> returns a mutable ref object that persists across renders. It has two main uses: accessing DOM elements directly, and storing mutable values that don't trigger re-renders.</p>
        <div class="lc-card">
          <h3>DOM Access</h3>
          <div class="lc-code">const inputRef = useRef(null);<br><br>function focusInput() {<br>  inputRef.current.focus();<br>}<br><br>&lt;input ref={inputRef} /&gt;<br>&lt;button onClick={focusInput}&gt;Focus&lt;/button&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Storing Mutable Values</h3>
          <div class="lc-code">const countRef = useRef(0);  // doesn't cause re-render<br>countRef.current++;          // update without re-render<br><br>// vs useState: triggers re-render<br>const [count, setCount] = useState(0);</div>
        </div>
        <div class="lc-card">
          <h3>useRef vs useState</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>useRef</th><th>useState</th></tr></thead>
            <tbody>
              <tr><td>Triggers re-render</td><td>No</td><td>Yes</td></tr>
              <tr><td>Persists across renders</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>DOM access</td><td>Yes</td><td>No</td></tr>
              <tr><td>Store previous value</td><td>Yes</td><td>Complex</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>useRef</code> for timers, previous values, and direct DOM access. Use <code>useState</code> when you need the UI to update.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState, useRef, useEffect } = React;

        function StopWatch() {
          const [time, setTime] = useState(0);
          const [running, setRunning] = useState(false);
          const intervalRef = useRef(null); // store interval id — no re-render needed

          const start = () => {
            if (!running) {
              setRunning(true);
              intervalRef.current = setInterval(() => setTime(t => t + 10), 10);
            }
          };
          const stop = () => { setRunning(false); clearInterval(intervalRef.current); };
          const reset = () => { stop(); setTime(0); };

          const fmt = (ms) => {
            const m = Math.floor(ms/60000), s = Math.floor((ms%60000)/1000), cs = Math.floor((ms%1000)/10);
            return `${String(m).padStart(2,'0')}:${String(s).padStart(2,'0')}.${String(cs).padStart(2,'0')}`;
          };

          return (
            <div style={{ textAlign:'center', padding:'1.5rem', border:'1px solid #e5e7eb', borderRadius:10, marginBottom:'1rem' }}>
              <div style={{ fontSize:'3rem', fontFamily:'monospace', fontWeight:'bold', color:'#6366f1', marginBottom:'1rem' }}>{fmt(time)}</div>
              <div style={{ display:'flex', gap:8, justifyContent:'center' }}>
                <button onClick={start} disabled={running} style={{ padding:'8px 20px', cursor:'pointer', background:'#10b981', color:'white', border:'none', borderRadius:6 }}>▶ Start</button>
                <button onClick={stop} disabled={!running} style={{ padding:'8px 20px', cursor:'pointer', background:'#f59e0b', color:'white', border:'none', borderRadius:6 }}>⏸ Stop</button>
                <button onClick={reset} style={{ padding:'8px 20px', cursor:'pointer', background:'#ef4444', color:'white', border:'none', borderRadius:6 }}>↺ Reset</button>
              </div>
            </div>
          );
        }

        function FocusInput() {
          const inputRef = useRef(null);
          return (
            <div style={{ padding:'1rem', border:'1px solid #e5e7eb', borderRadius:10 }}>
              <h4 style={{ margin:'0 0 0.75rem' }}>DOM Access with useRef</h4>
              <input ref={inputRef} placeholder="Click button to focus me..."
                style={{ padding:'8px 12px', borderRadius:6, border:'1px solid #d1d5db', marginRight:8 }} />
              <button onClick={() => inputRef.current.focus()}
                style={{ padding:'8px 14px', background:'#6366f1', color:'white', border:'none', borderRadius:6, cursor:'pointer' }}>
                Focus Input
              </button>
            </div>
          );
        }

        function App() {
          return <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}><h2>useRef Examples</h2><StopWatch /><FocusInput /></div>;
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Custom Hooks</h1>
        </div>
        <p class="lc-lead">Custom hooks let you extract and reuse stateful logic across components. A custom hook is a function whose name starts with <code>use</code> and calls other hooks.</p>
        <div class="lc-card">
          <h3>Creating a Custom Hook</h3>
          <div class="lc-code">function useLocalStorage(key, initialValue) {<br>  const [value, setValue] = useState(() =&gt; {<br>    const saved = localStorage.getItem(key);<br>    return saved ? JSON.parse(saved) : initialValue;<br>  });<br><br>  useEffect(() =&gt; {<br>    localStorage.setItem(key, JSON.stringify(value));<br>  }, [key, value]);<br><br>  return [value, setValue];<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Rules of Hooks</h3>
          <ul class="lc-list">
            <li>Only call hooks at the <strong>top level</strong> (not inside loops, conditions, or nested functions)</li>
            <li>Only call hooks from <strong>React functions</strong> (components or custom hooks)</li>
            <li>Custom hook names must start with <code>use</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Custom Hooks</h3>
          <table class="lc-table">
            <thead><tr><th>Hook</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>useLocalStorage</td><td>Persist state in localStorage</td></tr>
              <tr><td>useFetch</td><td>Fetch data with loading/error states</td></tr>
              <tr><td>useDebounce</td><td>Delay value update</td></tr>
              <tr><td>useToggle</td><td>Boolean toggle state</td></tr>
              <tr><td>useWindowSize</td><td>Track window dimensions</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Custom hooks are pure logic — they don't return JSX. They return values and setters, just like built-in hooks.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState, useEffect, useRef } = React;

        // Custom hook: useToggle
        function useToggle(initial = false) {
          const [value, setValue] = useState(initial);
          const toggle = () => setValue(v => !v);
          return [value, toggle];
        }

        // Custom hook: useDebounce
        function useDebounce(value, delay = 300) {
          const [debounced, setDebounced] = useState(value);
          useEffect(() => {
            const timer = setTimeout(() => setDebounced(value), delay);
            return () => clearTimeout(timer);
          }, [value, delay]);
          return debounced;
        }

        // Custom hook: useCounter
        function useCounter(initial = 0, step = 1) {
          const [count, setCount] = useState(initial);
          return {
            count,
            inc: () => setCount(c => c + step),
            dec: () => setCount(c => c - step),
            reset: () => setCount(initial),
          };
        }

        function ToggleDemo() {
          const [open, toggle] = useToggle(false);
          return (
            <div style={{ border:'1px solid #e5e7eb', borderRadius:8, padding:'1rem', marginBottom:'1rem' }}>
              <h4 style={{ margin:'0 0 0.5rem' }}>useToggle</h4>
              <button onClick={toggle} style={{ padding:'6px 14px', cursor:'pointer', background:'#6366f1', color:'white', border:'none', borderRadius:6 }}>
                {open ? 'Hide' : 'Show'} Panel
              </button>
              {open && <div style={{ marginTop:'0.75rem', padding:'0.75rem', background:'#f3f4f6', borderRadius:6 }}>🎉 Panel content revealed!</div>}
            </div>
          );
        }

        function SearchDemo() {
          const [query, setQuery] = useState('');
          const debounced = useDebounce(query, 400);
          const items = ['React', 'JavaScript', 'Python', 'Bootstrap', 'SQL', 'Ruby', 'Java', 'PHP'];
          const results = items.filter(i => i.toLowerCase().includes(debounced.toLowerCase()));
          return (
            <div style={{ border:'1px solid #e5e7eb', borderRadius:8, padding:'1rem', marginBottom:'1rem' }}>
              <h4 style={{ margin:'0 0 0.5rem' }}>useDebounce (400ms)</h4>
              <input value={query} onChange={e => setQuery(e.target.value)} placeholder="Search..." style={{ width:'100%', padding:'8px', borderRadius:6, border:'1px solid #d1d5db' }} />
              <div style={{ marginTop:'0.5rem', fontSize:'0.85rem', color:'#6b7280' }}>Searching: "{debounced}"</div>
              <ul style={{ margin:'0.5rem 0 0', paddingLeft:'1.2rem' }}>{results.map(r => <li key={r}>{r}</li>)}</ul>
            </div>
          );
        }

        function CounterDemo() {
          const { count, inc, dec, reset } = useCounter(0, 5);
          return (
            <div style={{ border:'1px solid #e5e7eb', borderRadius:8, padding:'1rem' }}>
              <h4 style={{ margin:'0 0 0.5rem' }}>useCounter (step=5)</h4>
              <div style={{ fontSize:'2rem', fontWeight:'bold', color:'#6366f1', marginBottom:'0.5rem' }}>{count}</div>
              <div style={{ display:'flex', gap:8 }}>
                <button onClick={dec} style={{ padding:'6px 14px', cursor:'pointer' }}>-5</button>
                <button onClick={reset} style={{ padding:'6px 14px', cursor:'pointer' }}>Reset</button>
                <button onClick={inc} style={{ padding:'6px 14px', cursor:'pointer' }}>+5</button>
              </div>
            </div>
          );
        }

        function App() {
          return <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}><h2>Custom Hooks</h2><ToggleDemo /><SearchDemo /><CounterDemo /></div>;
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useMemo and useCallback</h1>
        </div>
        <p class="lc-lead">These hooks optimize performance by memoizing expensive calculations and stable function references to prevent unnecessary re-renders.</p>
        <div class="lc-card">
          <h3>useMemo — Memoize a Computed Value</h3>
          <div class="lc-code">const { useMemo } = React;<br><br>// Only recomputes when dependencies change<br>const filteredList = useMemo(() =&gt; {<br>  return bigList.filter(item =&gt; item.includes(query));<br>}, [bigList, query]);</div>
        </div>
        <div class="lc-card">
          <h3>useCallback — Memoize a Function</h3>
          <div class="lc-code">const { useCallback } = React;<br><br>// Returns the same function reference unless deps change<br>const handleClick = useCallback(() =&gt; {<br>  doSomething(id);<br>}, [id]);<br><br>// Useful when passing callbacks to memoized children<br>&lt;ExpensiveChild onClick={handleClick} /&gt;</div>
        </div>
        <div class="lc-card">
          <h3>When to Use</h3>
          <table class="lc-table">
            <thead><tr><th>Hook</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td>useMemo</td><td>Expensive calculation (sorting, filtering large arrays)</td></tr>
              <tr><td>useCallback</td><td>Function passed to child component that uses React.memo</td></tr>
              <tr><td>Neither</td><td>Simple computations — premature optimization hurts readability</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Profile first, optimize second. Don't add <code>useMemo</code>/<code>useCallback</code> everywhere — they have their own overhead.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState, useMemo, useCallback } = React;

        // Generate a big list of numbers
        const NUMBERS = Array.from({ length: 10000 }, (_, i) => i + 1);

        function ExpensiveList({ filter, onSelect }) {
          // useMemo: only re-filters when filter changes
          const filtered = useMemo(() => {
            console.log('Filtering...');
            return NUMBERS.filter(n => {
              if (filter === 'even') return n % 2 === 0;
              if (filter === 'odd') return n % 2 !== 0;
              if (filter === 'prime') { if (n < 2) return false; for (let i=2;i<=Math.sqrt(n);i++) if(n%i===0) return false; return true; }
              return true;
            }).slice(0, 20);
          }, [filter]);

          return (
            <div style={{ padding:'1rem', border:'1px solid #e5e7eb', borderRadius:8 }}>
              <p style={{ margin:'0 0 0.5rem', color:'#6b7280', fontSize:'0.85rem' }}>Showing first 20 of filtered results:</p>
              <div style={{ display:'flex', flexWrap:'wrap', gap:6 }}>
                {filtered.map(n => (
                  <button key={n} onClick={() => onSelect(n)}
                    style={{ padding:'4px 10px', borderRadius:6, border:'1px solid #e5e7eb',
                      background:'#f9fafb', cursor:'pointer', fontFamily:'monospace' }}>
                    {n}
                  </button>
                ))}
              </div>
            </div>
          );
        }

        function App() {
          const [filter, setFilter] = useState('even');
          const [selected, setSelected] = useState(null);
          const [count, setCount] = useState(0);

          // useCallback: stable reference so ExpensiveList doesn't get a new function on every count++ render
          const handleSelect = useCallback((n) => setSelected(n), []);

          return (
            <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:480 }}>
              <h2>useMemo + useCallback</h2>
              <div style={{ display:'flex', gap:8, marginBottom:'1rem', flexWrap:'wrap' }}>
                {['all','even','odd','prime'].map(f => (
                  <button key={f} onClick={() => setFilter(f)}
                    style={{ padding:'6px 14px', borderRadius:20, border:'none', cursor:'pointer',
                      background: filter===f ? '#6366f1':'#e5e7eb', color: filter===f ? 'white':'#374151' }}>
                    {f}
                  </button>
                ))}
              </div>
              <ExpensiveList filter={filter} onSelect={handleSelect} />
              {selected && <p style={{ marginTop:'0.75rem', fontWeight:'bold', color:'#6366f1' }}>Selected: {selected}</p>}
              <hr style={{ margin:'1rem 0' }} />
              <p style={{ color:'#6b7280', fontSize:'0.85rem' }}>Clicking count doesn't re-filter the list (useMemo):</p>
              <button onClick={() => setCount(c=>c+1)} style={{ padding:'8px 16px', cursor:'pointer' }}>Renders: {count}</button>
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useReducer Hook</h1>
        </div>
        <p class="lc-lead"><code>useReducer</code> is an alternative to <code>useState</code> for complex state logic. It follows the Redux pattern: dispatch actions, a reducer function handles them.</p>
        <div class="lc-card">
          <h3>useReducer Pattern</h3>
          <div class="lc-code">const { useReducer } = React;<br><br>function reducer(state, action) {<br>  switch (action.type) {<br>    case 'increment': return { count: state.count + 1 };<br>    case 'decrement': return { count: state.count - 1 };<br>    case 'reset':     return { count: 0 };<br>    default: return state;<br>  }<br>}<br><br>function Counter() {<br>  const [state, dispatch] = useReducer(reducer, { count: 0 });<br>  return (<br>    &lt;&gt;<br>      &lt;p&gt;{state.count}&lt;/p&gt;<br>      &lt;button onClick={() =&gt; dispatch({ type: 'increment' })}&gt;+&lt;/button&gt;<br>    &lt;/&gt;<br>  );<br>}</div>
        </div>
        <div class="lc-card">
          <h3>useState vs useReducer</h3>
          <table class="lc-table">
            <thead><tr><th>Scenario</th><th>Prefer</th></tr></thead>
            <tbody>
              <tr><td>Simple boolean / number</td><td>useState</td></tr>
              <tr><td>Multiple related values</td><td>useReducer</td></tr>
              <tr><td>Next state depends on previous</td><td>useReducer</td></tr>
              <tr><td>Complex state transitions</td><td>useReducer</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Pass an <code>action.payload</code> to send data with your action: <code>dispatch({'{ type: "add", payload: newItem }'})</code>
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useReducer, useState } = React;

        const initialState = { items: [], filter: 'all' };

        function reducer(state, action) {
          switch (action.type) {
            case 'add':
              return { ...state, items: [...state.items, { id: Date.now(), text: action.payload, done: false }] };
            case 'toggle':
              return { ...state, items: state.items.map(i => i.id === action.id ? { ...i, done: !i.done } : i) };
            case 'delete':
              return { ...state, items: state.items.filter(i => i.id !== action.id) };
            case 'setFilter':
              return { ...state, filter: action.payload };
            case 'clearDone':
              return { ...state, items: state.items.filter(i => !i.done) };
            default:
              return state;
          }
        }

        function App() {
          const [state, dispatch] = useReducer(reducer, initialState);
          const [input, setInput] = useState('');

          const add = (e) => { e.preventDefault(); if (input.trim()) { dispatch({ type:'add', payload: input.trim() }); setInput(''); } };

          const visible = state.items.filter(i => {
            if (state.filter === 'active') return !i.done;
            if (state.filter === 'done')   return i.done;
            return true;
          });

          return (
            <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}>
              <h2>useReducer — Advanced Todo</h2>

              <form onSubmit={add} style={{ display:'flex', gap:8, marginBottom:'1rem' }}>
                <input value={input} onChange={e => setInput(e.target.value)} placeholder="New task..."
                  style={{ flex:1, padding:'8px 12px', borderRadius:6, border:'1px solid #d1d5db' }} />
                <button type="submit" style={{ padding:'8px 16px', background:'#6366f1', color:'white', border:'none', borderRadius:6, cursor:'pointer' }}>Add</button>
              </form>

              <div style={{ display:'flex', gap:6, marginBottom:'1rem' }}>
                {['all','active','done'].map(f => (
                  <button key={f} onClick={() => dispatch({ type:'setFilter', payload: f })}
                    style={{ padding:'4px 12px', borderRadius:20, border:'none', cursor:'pointer',
                      background: state.filter===f ? '#6366f1':'#e5e7eb', color: state.filter===f ? 'white':'#374151' }}>
                    {f}
                  </button>
                ))}
                <button onClick={() => dispatch({ type:'clearDone' })}
                  style={{ marginLeft:'auto', padding:'4px 12px', borderRadius:20, border:'none', cursor:'pointer', background:'#fee2e2', color:'#991b1b' }}>
                  Clear Done
                </button>
              </div>

              <ul style={{ listStyle:'none', padding:0 }}>
                {visible.map(item => (
                  <li key={item.id} style={{ display:'flex', alignItems:'center', gap:8, padding:'8px 0', borderBottom:'1px solid #f3f4f6' }}>
                    <input type="checkbox" checked={item.done} onChange={() => dispatch({ type:'toggle', id: item.id })} />
                    <span style={{ flex:1, textDecoration: item.done ? 'line-through' : 'none', color: item.done ? '#9ca3af' : '#111' }}>{item.text}</span>
                    <button onClick={() => dispatch({ type:'delete', id: item.id })} style={{ background:'none', border:'none', cursor:'pointer', color:'#ef4444' }}>×</button>
                  </li>
                ))}
                {visible.length === 0 && <li style={{ color:'#9ca3af', textAlign:'center', padding:'1rem' }}>No tasks here.</li>}
              </ul>
              <p style={{ color:'#6b7280', fontSize:'0.85rem', marginTop:'0.5rem' }}>
                {state.items.filter(i=>!i.done).length} remaining / {state.items.length} total
              </p>
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Fetching Data with useEffect</h1>
        </div>
        <p class="lc-lead">Real-world React apps fetch data from APIs. The standard pattern uses <code>useEffect</code> to trigger the fetch and <code>useState</code> to store loading, error, and data states.</p>
        <div class="lc-card">
          <h3>The Data Fetching Pattern</h3>
          <div class="lc-code">const [data, setData]       = useState(null);<br>const [loading, setLoading] = useState(true);<br>const [error, setError]     = useState(null);<br><br>useEffect(() =&gt; {<br>  fetch('/api/posts')<br>    .then(res =&gt; res.json())<br>    .then(json =&gt; { setData(json); setLoading(false); })<br>    .catch(err =&gt; { setError(err.message); setLoading(false); });<br>}, []);</div>
        </div>
        <div class="lc-card">
          <h3>Render Pattern</h3>
          <div class="lc-code">if (loading) return &lt;Spinner /&gt;;<br>if (error)   return &lt;ErrorMessage error={error} /&gt;;<br>return &lt;DataView data={data} /&gt;;</div>
        </div>
        <div class="lc-card">
          <h3>Cleanup — Avoid State Updates on Unmounted Components</h3>
          <div class="lc-code">useEffect(() =&gt; {<br>  let cancelled = false;<br>  fetch('/api/data').then(r =&gt; r.json()).then(d =&gt; {<br>    if (!cancelled) setData(d);<br>  });<br>  return () =&gt; { cancelled = true; };<br>}, []);</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In production apps, use libraries like <strong>SWR</strong> or <strong>React Query</strong> — they handle caching, revalidation, and deduplication automatically.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState, useEffect } = React;

        // Simulated API — returns mock data after a delay
        function fakeFetch(endpoint) {
          const data = {
            '/users': [
              { id:1, name:'Alice Smith',   role:'Engineer',  avatar:'AS', color:'#6366f1' },
              { id:2, name:'Bob Jones',     role:'Designer',  avatar:'BJ', color:'#10b981' },
              { id:3, name:'Carol White',   role:'Manager',   avatar:'CW', color:'#f59e0b' },
              { id:4, name:'Dave Brown',    role:'Analyst',   avatar:'DB', color:'#ef4444' },
            ],
          };
          return new Promise((resolve, reject) => {
            setTimeout(() => {
              if (data[endpoint]) resolve(data[endpoint]);
              else reject(new Error(`404: ${endpoint} not found`));
            }, 1200);
          });
        }

        function Spinner() {
          return <div style={{ textAlign:'center', padding:'2rem', color:'#6366f1', fontSize:'1.5rem' }}>⟳ Loading...</div>;
        }

        function UserCard({ user }) {
          return (
            <div style={{ display:'flex', alignItems:'center', gap:'1rem', padding:'12px',
              border:'1px solid #e5e7eb', borderRadius:8, marginBottom:8 }}>
              <div style={{ width:44, height:44, borderRadius:'50%', background:user.color,
                color:'white', display:'flex', alignItems:'center', justifyContent:'center', fontWeight:'bold' }}>
                {user.avatar}
              </div>
              <div>
                <div style={{ fontWeight:'bold' }}>{user.name}</div>
                <div style={{ color:'#6b7280', fontSize:'0.85rem' }}>{user.role}</div>
              </div>
            </div>
          );
        }

        function UserList() {
          const [users, setUsers] = useState(null);
          const [loading, setLoading] = useState(true);
          const [error, setError] = useState(null);

          const load = () => {
            setLoading(true); setError(null); setUsers(null);
            fakeFetch('/users')
              .then(data => { setUsers(data); setLoading(false); })
              .catch(err => { setError(err.message); setLoading(false); });
          };

          useEffect(() => { load(); }, []);

          return (
            <div>
              <div style={{ display:'flex', justifyContent:'space-between', alignItems:'center', marginBottom:'1rem' }}>
                <h3 style={{ margin:0 }}>Team ({users ? users.length : '…'})</h3>
                <button onClick={load} style={{ padding:'6px 14px', background:'#6366f1', color:'white', border:'none', borderRadius:6, cursor:'pointer' }}>↺ Reload</button>
              </div>
              {loading && <Spinner />}
              {error   && <div style={{ color:'#ef4444', padding:'1rem', background:'#fee2e2', borderRadius:6 }}>Error: {error}</div>}
              {users   && users.map(u => <UserCard key={u.id} user={u} />)}
            </div>
          );
        }

        function App() {
          return <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:420 }}><h2>Data Fetching</h2><UserList /></div>;
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">React with Bootstrap</h1>
        </div>
        <p class="lc-lead">React and Bootstrap work beautifully together. Use Bootstrap's CDN for styling and React for interactivity — or use the react-bootstrap library for proper React components.</p>
        <div class="lc-card">
          <h3>Using Bootstrap CDN in React</h3>
          <p>Add Bootstrap CDN to your <code>index.html</code> and use class names in JSX (remember: <code>className</code> not <code>class</code>):</p>
          <div class="lc-code">// JSX uses className, not class<br>&lt;div className="container mt-4"&gt;<br>  &lt;button className="btn btn-primary btn-lg"&gt;<br>    Click me<br>  &lt;/button&gt;<br>&lt;/div&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Dynamic className with State</h3>
          <div class="lc-code">const [active, setActive] = useState(false);<br><br>&lt;button<br>  className={`btn ${active ? 'btn-success' : 'btn-secondary'}`}<br>  onClick={() =&gt; setActive(!active)}<br>&gt;<br>  {active ? 'Active' : 'Inactive'}<br>&lt;/button&gt;</div>
        </div>
        <div class="lc-card">
          <h3>react-bootstrap Library</h3>
          <div class="lc-code">// npm install react-bootstrap<br>import { Button, Card, Modal } from 'react-bootstrap';<br><br>&lt;Button variant="primary" onClick={handleShow}&gt;Open Modal&lt;/Button&gt;<br>&lt;Modal show={show} onHide={handleClose}&gt;...&lt;/Modal&gt;</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For production, use <code>react-bootstrap</code> or <code>@mui/material</code> — they replace Bootstrap's JS with React components and are more accessible.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        function StatCard({ title, value, change, icon, variant }) {
          const positive = change >= 0;
          return (
            <div className={`card border-0 shadow-sm h-100`}>
              <div className="card-body">
                <div className="d-flex justify-content-between align-items-start">
                  <div>
                    <p className="text-muted small mb-1">{title}</p>
                    <h3 className="fw-bold mb-0">{value}</h3>
                    <small className={positive ? 'text-success' : 'text-danger'}>
                      {positive ? '▲' : '▼'} {Math.abs(change)}%
                    </small>
                  </div>
                  <div className={`bg-${variant}-subtle p-3 rounded-3 fs-4`}>{icon}</div>
                </div>
              </div>
            </div>
          );
        }

        function CourseRow({ name, students, rating, onEnroll }) {
          const [enrolled, setEnrolled] = useState(false);
          return (
            <tr>
              <td className="fw-bold">{name}</td>
              <td>{students.toLocaleString()}</td>
              <td>⭐ {rating}</td>
              <td>
                <button
                  className={`btn btn-sm ${enrolled ? 'btn-success' : 'btn-outline-primary'}`}
                  onClick={() => setEnrolled(e => !e)}>
                  {enrolled ? '✓ Enrolled' : 'Enroll'}
                </button>
              </td>
            </tr>
          );
        }

        function App() {
          const courses = [
            { id:1, name:'React Fundamentals', students:12450, rating:4.8 },
            { id:2, name:'Advanced Hooks', students:7820, rating:4.9 },
            { id:3, name:'React + TypeScript', students:5310, rating:4.7 },
            { id:4, name:'React Testing', students:3200, rating:4.6 },
          ];

          return (
            <div className="container-fluid p-4" style={{ fontFamily:'sans-serif' }}>
              <h2 className="fw-bold mb-4">📊 React + Bootstrap Dashboard</h2>

              <div className="row g-3 mb-4">
                <div className="col-6 col-md-3"><StatCard title="Total Students" value="28,780" change={12} icon="👥" variant="primary" /></div>
                <div className="col-6 col-md-3"><StatCard title="Courses" value="47" change={5} icon="📚" variant="success" /></div>
                <div className="col-6 col-md-3"><StatCard title="Revenue" value="$84K" change={-3} icon="💰" variant="warning" /></div>
                <div className="col-6 col-md-3"><StatCard title="Avg Rating" value="4.8" change={2} icon="⭐" variant="info" /></div>
              </div>

              <div className="card border-0 shadow-sm">
                <div className="card-header bg-white fw-bold">Top Courses</div>
                <div className="table-responsive">
                  <table className="table table-hover align-middle mb-0">
                    <thead className="table-light"><tr><th>Course</th><th>Students</th><th>Rating</th><th>Action</th></tr></thead>
                    <tbody>{courses.map(c => <CourseRow key={c.id} {...c} />)}</tbody>
                  </table>
                </div>
              </div>
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">React Router (Simulated)</h1>
        </div>
        <p class="lc-lead">React Router is the standard routing library for React. It lets you build multi-page SPAs by mapping URL paths to components. Here we simulate it using state.</p>
        <div class="lc-card">
          <h3>Real React Router v6</h3>
          <div class="lc-code">// npm install react-router-dom<br>import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';<br><br>function App() {<br>  return (<br>    &lt;BrowserRouter&gt;<br>      &lt;nav&gt;<br>        &lt;Link to="/"&gt;Home&lt;/Link&gt;<br>        &lt;Link to="/about"&gt;About&lt;/Link&gt;<br>      &lt;/nav&gt;<br>      &lt;Routes&gt;<br>        &lt;Route path="/" element={&lt;Home /&gt;} /&gt;<br>        &lt;Route path="/about" element={&lt;About /&gt;} /&gt;<br>        &lt;Route path="/users/:id" element={&lt;UserDetail /&gt;} /&gt;<br>      &lt;/Routes&gt;<br>    &lt;/BrowserRouter&gt;<br>  );<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Key Hooks</h3>
          <table class="lc-table">
            <thead><tr><th>Hook</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td>useNavigate()</td><td>Programmatic navigation</td></tr>
              <tr><td>useParams()</td><td>URL parameters (:id)</td></tr>
              <tr><td>useLocation()</td><td>Current URL info</td></tr>
              <tr><td>useSearchParams()</td><td>Query string (?key=val)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>&lt;Link&gt;</code> instead of <code>&lt;a href&gt;</code> for navigation — it prevents full page reloads while updating the URL.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState } = React;

        // Simulated router using state (real apps use react-router-dom)
        function useRouter() {
          const [path, setPath] = useState('/');
          const navigate = (to) => setPath(to);
          return { path, navigate };
        }

        function NavLink({ to, children, path, navigate }) {
          const active = path === to;
          return (
            <button onClick={() => navigate(to)}
              style={{ padding:'8px 16px', border:'none', borderRadius:6, cursor:'pointer',
                background: active ? '#6366f1':'transparent', color: active ? 'white':'#374151',
                fontWeight: active ? 'bold':'normal' }}>
              {children}
            </button>
          );
        }

        const COURSES = [
          { id:1, title:'React', description:'Build UIs with components', lessons:20 },
          { id:2, title:'JavaScript', description:'The language of the web', lessons:20 },
          { id:3, title:'Python', description:'Versatile scripting language', lessons:20 },
        ];

        function HomePage({ navigate }) {
          return (
            <div>
              <h2>🏠 Home</h2>
              <p>Welcome! Explore our courses below.</p>
              <div style={{ display:'flex', flexDirection:'column', gap:8 }}>
                {COURSES.map(c => (
                  <div key={c.id} onClick={() => navigate(`/course/${c.id}`)}
                    style={{ padding:'12px', border:'1px solid #e5e7eb', borderRadius:8, cursor:'pointer' }}
                    onMouseEnter={e=>e.currentTarget.style.borderColor='#6366f1'}
                    onMouseLeave={e=>e.currentTarget.style.borderColor='#e5e7eb'}>
                    <strong>{c.title}</strong> — {c.description}
                  </div>
                ))}
              </div>
            </div>
          );
        }

        function CoursePage({ id, navigate }) {
          const course = COURSES.find(c => c.id === parseInt(id));
          if (!course) return <div><h2>404</h2><p>Course not found.</p></div>;
          return (
            <div>
              <button onClick={() => navigate('/')} style={{ marginBottom:'1rem', cursor:'pointer', background:'none', border:'1px solid #d1d5db', padding:'4px 12px', borderRadius:6 }}>← Back</button>
              <h2>📚 {course.title}</h2>
              <p>{course.description}</p>
              <p><strong>{course.lessons}</strong> lessons · Updated 2024</p>
              <button onClick={() => navigate('/about')} style={{ padding:'8px 16px', background:'#6366f1', color:'white', border:'none', borderRadius:6, cursor:'pointer' }}>Learn More</button>
            </div>
          );
        }

        function AboutPage() {
          return <div><h2>ℹ️ About</h2><p>AI Academy teaches programming interactively.</p><p>Built with React ⚛️</p></div>;
        }

        function App() {
          const { path, navigate } = useRouter();
          const idMatch = path.match(/^\/course\/(\d+)$/);

          return (
            <div style={{ fontFamily:'sans-serif', maxWidth:480, padding:'1.5rem' }}>
              <nav style={{ display:'flex', gap:4, padding:'0.5rem', background:'#f9fafb', borderRadius:8, marginBottom:'1.5rem' }}>
                <NavLink to="/" path={path} navigate={navigate}>Home</NavLink>
                <NavLink to="/about" path={path} navigate={navigate}>About</NavLink>
                <span style={{ marginLeft:'auto', padding:'8px', color:'#9ca3af', fontSize:'0.85rem' }}>path: {path}</span>
              </nav>
              {path === '/' && <HomePage navigate={navigate} />}
              {idMatch && <CoursePage id={idMatch[1]} navigate={navigate} />}
              {path === '/about' && <AboutPage />}
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Performance and Best Practices</h1>
        </div>
        <p class="lc-lead">Writing performant React means understanding when components re-render and how to avoid unnecessary work. These patterns scale from small apps to large production systems.</p>
        <div class="lc-card">
          <h3>React.memo — Skip Re-renders</h3>
          <div class="lc-code">// Without memo: re-renders whenever parent renders<br>// With memo: only re-renders if props change<br>const ExpensiveChild = React.memo(function ExpensiveChild({ data }) {<br>  return &lt;div&gt;{data}&lt;/div&gt;;<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Key Performance Rules</h3>
          <ul class="lc-list">
            <li>Avoid creating objects/arrays inside JSX (new ref each render)</li>
            <li>Move static data outside components</li>
            <li>Use <code>key</code> properly — unstable keys cause remounts</li>
            <li>Virtualize long lists (react-virtual, react-window)</li>
            <li>Lazy-load components with <code>React.lazy + Suspense</code></li>
            <li>Keep state as local as possible</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Code Splitting with lazy</h3>
          <div class="lc-code">const HeavyChart = React.lazy(() =&gt; import('./HeavyChart'));<br><br>function Dashboard() {<br>  return (<br>    &lt;Suspense fallback={&lt;Spinner /&gt;}&gt;<br>      &lt;HeavyChart /&gt;<br>    &lt;/Suspense&gt;<br>  );<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Avoiding Common Mistakes</h3>
          <table class="lc-table">
            <thead><tr><th>Mistake</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>setState in render</td><td>Move to useEffect or event handler</td></tr>
              <tr><td>Missing deps in useEffect</td><td>Use ESLint react-hooks plugin</td></tr>
              <tr><td>Huge components</td><td>Split into smaller focused ones</td></tr>
              <tr><td>Index as key in dynamic list</td><td>Use stable unique ID</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use React DevTools Profiler to find which components re-render most — optimize only what's actually slow.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState, useMemo, memo, useCallback } = React;

        // React.memo: only re-renders if props change
        const ListItem = memo(function ListItem({ item, onRemove }) {
          console.log('Rendering:', item.text); // watch console
          return (
            <div style={{ display:'flex', justifyContent:'space-between', alignItems:'center',
              padding:'8px 12px', border:'1px solid #e5e7eb', borderRadius:6, marginBottom:6 }}>
              <span style={{ textDecoration: item.done ? 'line-through' : 'none', color: item.done ? '#9ca3af':'#111' }}>
                {item.text}
              </span>
              <button onClick={() => onRemove(item.id)} style={{ background:'none', border:'none', color:'#ef4444', cursor:'pointer', fontSize:'1.1rem' }}>×</button>
            </div>
          );
        });

        const INITIAL = [
          { id:1, text:'Learn React.memo', done:false },
          { id:2, text:'Use useCallback', done:true },
          { id:3, text:'Profile with DevTools', done:false },
        ];

        function App() {
          const [items, setItems] = useState(INITIAL);
          const [input, setInput] = useState('');
          const [count, setCount] = useState(0); // causes parent re-renders

          // useCallback: stable reference — ListItem won't re-render due to this
          const removeItem = useCallback((id) => {
            setItems(prev => prev.filter(i => i.id !== id));
          }, []);

          // useMemo: only recomputes when items change
          const stats = useMemo(() => ({
            total: items.length,
            done: items.filter(i => i.done).length,
          }), [items]);

          return (
            <div style={{ fontFamily:'sans-serif', padding:'1.5rem', maxWidth:440 }}>
              <h2>React Performance</h2>

              <div style={{ background:'#f0fdf4', border:'1px solid #bbf7d0', borderRadius:8, padding:'0.75rem', marginBottom:'1rem', fontSize:'0.85rem' }}>
                ✅ Total: {stats.total} · Done: {stats.done} · Remaining: {stats.total - stats.done}
              </div>

              <div style={{ display:'flex', gap:8, marginBottom:'1rem' }}>
                <input value={input} onChange={e => setInput(e.target.value)} placeholder="New item..."
                  style={{ flex:1, padding:'8px', borderRadius:6, border:'1px solid #d1d5db' }} />
                <button onClick={() => { if(input.trim()) { setItems(p=>[...p,{id:Date.now(),text:input.trim(),done:false}]); setInput(''); }}}
                  style={{ padding:'8px 14px', background:'#6366f1', color:'white', border:'none', borderRadius:6, cursor:'pointer' }}>Add</button>
              </div>

              {items.map(item => <ListItem key={item.id} item={item} onRemove={removeItem} />)}

              <hr style={{ margin:'1rem 0' }} />
              <p style={{ color:'#6b7280', fontSize:'0.85rem' }}>Parent render count (clicking doesn't re-render ListItems thanks to memo+useCallback):</p>
              <button onClick={() => setCount(c=>c+1)} style={{ padding:'8px 16px', cursor:'pointer' }}>Re-render Parent ({count})</button>
            </div>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">React Review — Full Application</h1>
        </div>
        <p class="lc-lead">You've completed the React course! Build a complete mini-application combining components, state, props, hooks, context, and Bootstrap styling.</p>
        <div class="lc-card">
          <h3>Core Concepts Recap</h3>
          <table class="lc-table">
            <thead><tr><th>Concept</th><th>Key Idea</th></tr></thead>
            <tbody>
              <tr><td>JSX</td><td>HTML-like syntax compiled to React.createElement</td></tr>
              <tr><td>Components</td><td>Functions that return JSX, named with capital letters</td></tr>
              <tr><td>Props</td><td>Read-only data passed from parent to child</td></tr>
              <tr><td>useState</td><td>Local mutable state that triggers re-renders</td></tr>
              <tr><td>useEffect</td><td>Side effects: fetch, timers, subscriptions</td></tr>
              <tr><td>useContext</td><td>Global state without prop drilling</td></tr>
              <tr><td>useRef</td><td>DOM access + mutable values without re-render</td></tr>
              <tr><td>useReducer</td><td>Complex state with action dispatch pattern</td></tr>
              <tr><td>useMemo/useCallback</td><td>Performance optimization via memoization</td></tr>
              <tr><td>Custom hooks</td><td>Reusable stateful logic (use* naming)</td></tr>
              <tr><td>React.memo</td><td>Skip re-render if props unchanged</td></tr>
              <tr><td>Data flow</td><td>Props down ↓, callbacks up ↑</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next Steps:</strong> Explore TypeScript + React, React Query for data fetching, Zustand or Redux for global state, and Next.js for server-side rendering.
        </div>
      HTML
      starter_code: <<~'JSX'
        const { useState, useContext, createContext, useMemo, useReducer } = React;

        const AuthContext = createContext(null);
        const themes = {
          light: { bg:'#f9fafb', card:'#ffffff', text:'#111827', muted:'#6b7280', border:'#e5e7eb' },
          dark:  { bg:'#0f172a', card:'#1e293b', text:'#f1f5f9', muted:'#94a3b8', border:'#334155' },
        };

        const COURSES = [
          { id:1, slug:'react',      icon:'⚛️',  title:'React',       level:'Intermediate', lessons:20, enrolled:false },
          { id:2, slug:'javascript', icon:'🟨',  title:'JavaScript',  level:'Beginner',     lessons:20, enrolled:true  },
          { id:3, slug:'python',     icon:'🐍',  title:'Python',      level:'Beginner',     lessons:20, enrolled:false },
          { id:4, slug:'bootstrap',  icon:'🅱️',  title:'Bootstrap',   level:'Beginner',     lessons:20, enrolled:true  },
        ];

        function coursesReducer(courses, action) {
          switch (action.type) {
            case 'toggle': return courses.map(c => c.id === action.id ? {...c, enrolled: !c.enrolled} : c);
            default: return courses;
          }
        }

        function CourseCard({ course, onToggle, theme }) {
          const t = themes[theme];
          const lvlColor = { Beginner:'#10b981', Intermediate:'#6366f1', Advanced:'#ef4444' };
          return (
            <div style={{ background:t.card, border:`1px solid ${t.border}`, borderRadius:10,
              padding:'1rem', display:'flex', flexDirection:'column', gap:8 }}>
              <div style={{ display:'flex', justifyContent:'space-between', alignItems:'flex-start' }}>
                <div style={{ fontSize:'2rem' }}>{course.icon}</div>
                <span style={{ fontSize:'0.75rem', fontWeight:'bold', color:'white', background:lvlColor[course.level], padding:'2px 8px', borderRadius:10 }}>{course.level}</span>
              </div>
              <div style={{ fontWeight:'bold', fontSize:'1rem', color:t.text }}>{course.title}</div>
              <div style={{ color:t.muted, fontSize:'0.85rem' }}>📚 {course.lessons} lessons</div>
              <button onClick={() => onToggle(course.id)}
                style={{ padding:'6px 12px', borderRadius:6, border:'none', cursor:'pointer', fontWeight:'bold',
                  background: course.enrolled ? '#d1fae5' : '#6366f1',
                  color: course.enrolled ? '#065f46' : 'white' }}>
                {course.enrolled ? '✓ Enrolled' : 'Enroll'}
              </button>
            </div>
          );
        }

        function App() {
          const [user]  = useState({ name:'Alice', email:'alice@example.com' });
          const [theme, setTheme] = useState('light');
          const [courses, dispatch] = useReducer(coursesReducer, COURSES);
          const t = themes[theme];

          const stats = useMemo(() => ({
            enrolled: courses.filter(c=>c.enrolled).length,
            available: courses.filter(c=>!c.enrolled).length,
          }), [courses]);

          return (
            <AuthContext.Provider value={{ user }}>
              <div style={{ minHeight:'100vh', background:t.bg, color:t.text, fontFamily:'sans-serif', padding:'1.5rem', transition:'all 0.3s' }}>

                {/* Header */}
                <div style={{ display:'flex', justifyContent:'space-between', alignItems:'center', marginBottom:'1.5rem' }}>
                  <div>
                    <h2 style={{ margin:0, color:t.text }}>⚛️ AI Academy</h2>
                    <p style={{ margin:0, color:t.muted, fontSize:'0.85rem' }}>Welcome, {user.name}!</p>
                  </div>
                  <button onClick={() => setTheme(t => t==='light'?'dark':'light')}
                    style={{ padding:'8px 14px', borderRadius:8, cursor:'pointer', background:t.card, color:t.text, border:`1px solid ${t.border}`, fontWeight:'bold' }}>
                    {theme === 'light' ? '🌙' : '☀️'} {theme === 'light' ? 'Dark' : 'Light'}
                  </button>
                </div>

                {/* Stats */}
                <div style={{ display:'flex', gap:12, marginBottom:'1.5rem' }}>
                  {[{label:'Enrolled', val:stats.enrolled, color:'#10b981'},{label:'Available',val:stats.available,color:'#6366f1'},{label:'Total',val:courses.length,color:'#f59e0b'}].map(s=>(
                    <div key={s.label} style={{ flex:1, background:t.card, border:`1px solid ${t.border}`, borderRadius:8, padding:'0.75rem', textAlign:'center' }}>
                      <div style={{ fontSize:'1.5rem', fontWeight:'bold', color:s.color }}>{s.val}</div>
                      <div style={{ fontSize:'0.8rem', color:t.muted }}>{s.label}</div>
                    </div>
                  ))}
                </div>

                {/* Course Grid */}
                <div style={{ display:'grid', gridTemplateColumns:'repeat(auto-fill, minmax(180px,1fr))', gap:'1rem' }}>
                  {courses.map(c => <CourseCard key={c.id} course={c} theme={theme} onToggle={(id) => dispatch({ type:'toggle', id })} />)}
                </div>

              </div>
            </AuthContext.Provider>
          );
        }

        ReactDOM.createRoot(document.getElementById('root')).render(<App />);
      JSX
    },
  }
end
