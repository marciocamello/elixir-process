defmodule UnderstandProcess do
  def start, do: spawn fn -> loop(:random.uniform(1000)) end

  def loop(conn) do
    receive do
      {:execute, pid, query} ->
        result = execute_query(conn, query)
        send(pid, {:result, result})
    end

    loop(conn)
  end

  def async_execute_query(server_pid, query), do: send(server_pid, {:execute, self(), query})

  def result() do
    receive do
      {:result, result} -> result
    after 5000 -> "Execute problens on query"
    end
  end

  def execute_query(conn, query) do
    :timer.sleep(2000)
    "Connection #{conn} result: #{query}"
  end
end
