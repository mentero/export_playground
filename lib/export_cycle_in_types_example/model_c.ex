defmodule ExportCycleInTypesExample.ModelC do
  alias ExportCycleInTypesExample.ModelA
  alias ExportCycleInTypesExample.ModelB
  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}

  @spec call(ModelA.t(), ModelB.t()) :: :ok
  def call(_arg, _arg2), do: :ok
end
