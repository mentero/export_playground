defmodule ExportCycleInMatchExample.ModelA do
  alias ExportCycleInMatchExample.ModelB

  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}

  def call(%ModelB{} = _arg), do: :ok
end
