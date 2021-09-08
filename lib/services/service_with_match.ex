defmodule ServiceWithMatch do
  def call(%ModelA{} = arg, %ModelB{} = arg2), do: :ok
end
