defmodule MixtureTest do
  use ExUnit.Case
  doctest Mixture

  test "greets the world" do
    assert Mixture.main(:args) != nil
  end
end
