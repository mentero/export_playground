defmodule ExportCycleInTypesExample.ModelA do
  alias ExportCycleInTypesExample.ModelB
  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}

  @spec call(ModelB.t()) :: :ok
  def call(_arg), do: :ok
end
