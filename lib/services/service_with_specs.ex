defmodule ServiceWithSpecs do
  @spec call(ModelC.t(), ModelD.t()) :: :ok
  def call(arg, arg2), do: :ok
end
