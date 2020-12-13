# UnderstandProcess

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `understand_process` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:understand_process, "~> 0.1.0"}
  ]
end
```

```elixir
envia_email = fn e -> :timer.sleep(2000)
"Email enviado com o assunto: #{e}"
end

1..3 |> Enum.map(&envia_email/1)

1..3 |> Enum.map(&envia_email/1)

async_email = &(spawn(fn -> IO.puts(envia_email.(&1)) end))

async_email.("123")

pid = v 9

Process.alive? pid

1..1_000 |> Enum.map(&(async_email.(&1)))

send self, {:exp, 10}

receive do
{:exp, v} -> v * v
end

1..5 |> Enum.map(fn n -> UnderstandProcess.async_execute_query(pid, n) end)

1..5 |> Enum.map(fn n -> UnderstandProcess.async_execute_query(pid, n) end)
```



Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/understand_process](https://hexdocs.pm/understand_process).

