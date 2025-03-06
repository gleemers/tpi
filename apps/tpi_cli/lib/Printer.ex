defmodule Printer do
  def info(message) do
    IO.puts("Info: " <> message)
  end

  def info(message, value) do
    info(message <> value)
  end

  def warn(warning) do
    IO.puts("Warning: " <> warning)
  end

  def error(error) do
    IO.puts("Error: " <> error)
  end
end
