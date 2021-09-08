defmodule PatternMatchExample.Service do
  alias PatternMatchExample.ModelA
  alias PatternMatchExample.ModelB

  def call(%ModelA{} = _arg, %ModelB{} = _arg2), do: :ok
end
