defmodule PatternMatchExample.ModelB do
  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}
end
