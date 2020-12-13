defmodule UnderstandProcessTest do
  use ExUnit.Case
  doctest UnderstandProcess

  test "greets the world" do
    assert UnderstandProcess.hello() == :world
  end
end
