defmodule TpiTest do
  use ExUnit.Case
  doctest Tpi

  test "greets the world" do
    assert Tpi.hello() == :world
  end
end
