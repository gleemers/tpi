defmodule Tpi do
  @moduledoc """
  Documentation for `Tpi`.
  """
require Logger

  def update_index do
    # TODO: Update package index
    Printer.info("Updating package index...")
  end

  def install(package) do
    Tpi.update_index()
    # TODO: Fetch package
    Printer.info("Installing: ", package)
  end

  def uninstall(package) do
    # TODO: Uninstall package
    Printer.info("Uninstalling: ", package)
  end
end
