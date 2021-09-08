defmodule TypespecsExample.Service do
  alias TypespecsExample.ModelA
  alias TypespecsExample.ModelB

  @spec call(ModelA.t(), ModelB.t()) :: :ok
  def call(_arg, _arg2), do: :ok
end
