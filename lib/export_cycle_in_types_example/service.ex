defmodule ExportCycleInTypesExample.Service do
  alias ExportCycleInTypesExample.ModelA
  alias ExportCycleInTypesExample.ModelB

  @spec call(ModelB.t(), ModelA.t()) :: :ok
  def call(_arg, _arg3), do: :ok
end
