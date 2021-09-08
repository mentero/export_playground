defmodule PatternMatchExample.ModelA do
  defstruct [:foo, :bar]

  @type t :: %__MODULE__{}
end
