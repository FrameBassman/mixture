defmodule MixtureTest do
  use ExUnit.Case
  doctest Mixture

  test "greets the world" do
    test_args = [1, "args"]
    assert Mixture.main(test_args) != nil
  end
end
