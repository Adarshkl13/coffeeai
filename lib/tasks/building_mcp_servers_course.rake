require_relative "../building_mcp_servers_content"

namespace :content do
  desc "Create Building MCP Servers course and populate all 20 lessons"
  task building_mcp_servers: :environment do
    course = Course.find_or_create_by!(slug: "building-mcp-servers") do |c|
      c.title       = "Building MCP Servers"
      c.description = "Learn the Model Context Protocol (MCP), the open standard that connects AI apps to tools and data. Build MCP servers in Python with tools, resources and prompts, test them, connect them to Claude and keep them secure."
      c.color       = "#f97316"
      c.icon        = "🔌"
      c.position    = 29
      c.published   = true
    end
    course.update!(description: "Learn the Model Context Protocol (MCP), the open standard that connects AI apps to tools and data. Build MCP servers in Python with tools, resources and prompts, test them, connect them to Claude and keep them secure.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is MCP?",
      2 => "Hosts, Clients and Servers",
      3 => "JSON-RPC Messages",
      4 => "The Connection Lifecycle",
      5 => "Transports: stdio and Streamable HTTP",
      6 => "Your First MCP Server in Python",
      7 => "Designing Good Tools",
      8 => "Tool Results and Errors",
      9 => "Resources: Sharing Data",
      10 => "Prompts: Reusable Templates",
      11 => "Testing and Debugging Servers",
      12 => "Connecting Servers to Claude",
      13 => "Writing an MCP Client",
      14 => "Client Features: Sampling, Roots and Elicitation",
      15 => "Progress, Logging and Cancellation",
      16 => "Remote Servers over HTTP",
      17 => "Authorization with OAuth",
      18 => "MCP Security Risks",
      19 => "Shipping a Server",
      20 => "Capstone: Build a Course Notes Server"
    }

    descriptions = {
      1 => "Learn what the Model Context Protocol is, the problem it solves, and the tools, resources and prompts an MCP server can offer.",
      2 => "Meet the three MCP roles: the host app, one client per server connection, and the server. See why the model never talks to a server directly.",
      3 => "Read the three kinds of JSON-RPC 2.0 messages that MCP uses: requests, responses and notifications, plus the common error codes.",
      4 => "Follow a connection from start to shutdown. See how the current version puts version and capabilities in every request, and how older versions used the initialize handshake.",
      5 => "Compare the two MCP transports: stdio for local servers and Streamable HTTP for remote ones, with their rules and when to pick each.",
      6 => "Build your first MCP server in Python with one tool. See how type hints and docstrings become the tool's schema and description.",
      7 => "Write tool names, descriptions and input schemas that the model can use correctly. Use enums, required fields and safe defaults.",
      8 => "Learn what a tool result contains, including structured output. Learn the difference between tool errors and protocol errors.",
      9 => "Share data with fixed resources and resource templates. Learn URIs, MIME types, resources/list and resources/read.",
      10 => "Offer reusable prompt templates with arguments that users start as slash commands. Learn when a prompt is better than a tool.",
      11 => "Test servers with the MCP Inspector and automatic tests, log to stderr, and fix common mistakes like printing to stdout.",
      12 => "Connect your server to Claude Desktop, Claude Code and the Claude API. Learn scopes and how to keep secrets in environment variables.",
      13 => "Write a Python MCP client that lists a server's tools, gives them to Claude and runs the tool loop.",
      14 => "Learn how a server asks the user for input with elicitation, and why sampling and roots are now deprecated.",
      15 => "Show progress for long tasks, send log messages, cancel requests, set timeouts and handle list-changed notices.",
      16 => "Run an MCP server over Streamable HTTP, understand stateless servers, and keep it safe for many users.",
      17 => "Protect remote MCP servers with OAuth 2.1. Learn the flow, access tokens, scopes, audience checks and why you never pass tokens through.",
      18 => "Learn the main MCP risks: prompt injection, tool poisoning, over-broad permissions and confused deputies, and how to design against them.",
      19 => "Package a server so it runs with uvx or a container, change tools without breaking clients, and add docs, monitoring and rate limits.",
      20 => "Plan, build and test a course notes MCP server with two tools, a resource and a prompt, then connect it to Claude."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What main problem does MCP solve?", opts: ["A) It makes language models run faster on phones", "B) It gives AI apps and tools one shared way to connect, so each service needs only one server", "C) It replaces JSON with a new data format"], ans: "B" },
      2 => { type: "true_false", q: "In MCP, the language model opens its own connection to each server and calls tools directly.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "A JSON-RPC message has a method and params, but no id. What is it, and what should the receiver do?", opts: ["A) A notification, and the receiver must not reply", "B) A response, and the receiver must send it back", "C) A broken request, and the receiver must reply with error -32700"], ans: "A" },
      4 => { type: "multiple_choice", q: "In the current MCP version (2026-07-28), how does the server learn the client's protocol version and capabilities?", opts: ["A) From a session ID the server created earlier", "B) It guesses them from the client's name", "C) Every request carries them in its _meta field"], ans: "C" },
      5 => { type: "multiple_choice", q: "Your stdio MCP server has a print(\"debug\") line in a tool. What happens?", opts: ["A) Nothing, because print() output is ignored", "B) The text goes to stdout and breaks the JSON-RPC messages, so log to stderr instead", "C) The host shows it to the user as a tool result"], ans: "B" },
      6 => { type: "multiple_choice", q: "In a server built with the MCP Python SDK, where does a tool's description come from?", opts: ["A) The function's docstring", "B) The server's name", "C) A separate JSON file you must write"], ans: "A" },
      7 => { type: "multiple_choice", q: "A tool has an argument that must be either \"newest\" or \"oldest\". What is the best way to show this in the schema?", opts: ["A) Explain it only in the server's README", "B) Use an enum, for example Literal[\"newest\", \"oldest\"]", "C) Make it a free text string with no limits"], ans: "B" },
      8 => { type: "multiple_choice", q: "A tool is called with a note name that does not exist. How should the server report this?", opts: ["A) As a JSON-RPC protocol error with code -32601", "B) By returning an empty result with no content", "C) As a tool result with isError set to true and a helpful message"], ans: "C" },
      9 => { type: "true_false", q: "In MCP, resources are mainly controlled by the model, which decides by itself when to read them.", opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "Which request does a host send to get the finished messages of a server prompt?", opts: ["A) tools/call", "B) resources/read", "C) prompts/get"], ans: "C" },
      11 => { type: "multiple_choice", q: "Why should a stdio MCP server not use print() for debug messages?", opts: ["A) print() writes to stdout, which must carry only JSON-RPC messages", "B) print() is too slow for servers", "C) print() sends the text to the model"], ans: "A" },
      12 => { type: "multiple_choice", q: "In Claude Code, where is a server with the project scope saved, so the whole team can share it?", opts: ["A) In ~/.claude.json", "B) In .mcp.json in the project folder", "C) In claude_desktop_config.json"], ans: "B" },
      13 => { type: "true_false", q: "In an MCP client loop, your code (not the model) sends tools/call to the server when Claude asks for a tool.", opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "In MCP spec 2026-07-28, how does a server ask the user for more input during a tool call?", opts: ["A) It returns a result with resultType \"input_required\" and inputRequests", "B) It sends its own elicitation/create request on a separate stream", "C) It returns error -32601"], ans: "A" },
      15 => { type: "multiple_choice", q: "On a stdio connection, how does a client cancel a request that is still running?", opts: ["A) It sends a new tools/call with cancel set to true", "B) It closes the server's stdin", "C) It sends notifications/cancelled with the requestId"], ans: "C" },
      16 => { type: "multiple_choice", q: "Why should an HTTP MCP server check the Origin header?", opts: ["A) To make responses faster", "B) To block DNS rebinding attacks from web pages", "C) To choose between JSON and SSE replies"], ans: "B" },
      17 => { type: "multiple_choice", q: "Your remote MCP server gets a valid token, but its audience is a different server. What should it do?", opts: ["A) Accept it, because the signature is valid", "B) Reject it with 401, because the token was not made for this server", "C) Forward it to the other server"], ans: "B" },
      18 => { type: "multiple_choice", q: "A tool's description secretly tells the model to read the user's SSH key. What is this attack called?", opts: ["A) Tool poisoning", "B) Rate limiting", "C) Token passthrough"], ans: "A" },
      19 => { type: "true_false", q: "Renaming a tool from search_notes to find_notes is a safe minor change that needs no major version.", opts: ["True", "False"], ans: "False" },
      20 => { type: "multiple_choice", q: "In the notes server, add_note gets a name with spaces and capital letters. What is the best response?", opts: ["A) A JSON-RPC protocol error -32601", "B) Save it anyway and print a warning to stdout", "C) A tool result with isError: true and a clear message the model can use to retry"], ans: "C" }
    }

    BuildingMcpServersContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code])

      e = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |x|
        x.exercise_type = e[:type]; x.question = e[:q]
        x.options = e[:opts]; x.correct_answer = e[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end
