# “Convert a float to a string with two decimal digits. (Erlang)”

IO.inspect :erlang.float_to_binary 23.44

# “Get the value of an operating-system environment variable. (Elixir)”

IO.inspect System.get_env("PATH")

# “Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)”

IO.inspect Path.extname("doc/some.docx")

# “Return the process’s current working directory. (Elixir)”

IO.inspect System.cwd

# “Execute a command in your operating system’s shell.”

IO.inspect System.cmd "echo", ["Hello world!"]

