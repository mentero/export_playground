defmodule ExportCycleInMatchExample.ModelC do
  alias ExportCycleInMatchExample.ModelA
  alias ExportCycleInMatchExample.ModelB

  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}

  def call(%ModelA{} = _arg, %ModelB{} = _arg2), do: :ok
end
