defmodule MixtureTest do
  use ExUnit.Case
  doctest Mixture

  test "greets the world" do
    test_args = [1, "args"]
    assert Mixture.main(test_args) != nil
  end

  test "starts with `mix run`" do
    case Mixture.start(:normal, []) do
      {:ok, x} -> assert is_pid(x) === true
    end
  end
end
