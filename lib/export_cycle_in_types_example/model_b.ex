defmodule ExportCycleInTypesExample.ModelB do
  alias ExportCycleInTypesExample.ModelC
  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}

  @spec call(ModelC.t()) :: :ok
  def call(_arg), do: :ok
end
