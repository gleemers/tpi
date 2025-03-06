defmodule Main do
  def main(args) do
    case args do
      ["help"] -> help()
      ["install", package] -> Tpi.install(package)
      ["uninstall", package] -> Tpi.uninstall(package)
      ["update"] -> Tpi.update_index()
      _ -> help()
    end
  end

  defp help do
    IO.puts """
    Usage: tpi <command>

    Commands:
      help                  Show this help message
      install <package>     Install a package
      uninstall <package>   Uninstall a package
    """
  end
end

Main.main(System.argv())
