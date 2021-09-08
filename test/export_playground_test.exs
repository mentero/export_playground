defmodule ExportPlaygroundTest do
  use ExUnit.Case
  doctest ExportPlayground

  test "greets the world" do
    assert ExportPlayground.hello() == :world
  end
end
