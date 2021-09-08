defmodule ExportCycleInMatchExample.ModelB do
  alias ExportCycleInMatchExample.ModelC

  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}

  def call(%ModelC{} = _arg), do: :ok
end
