defmodule ExportCycleInMatchExample.Service do
  alias ExportCycleInMatchExample.ModelA
  alias ExportCycleInMatchExample.ModelB

  def call(%ModelB{} = _arg, %ModelA{} = _arg3), do: :ok
end
