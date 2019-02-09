defmodule BoardBenchmark.BoardTest do
  use ExUnit.Case, async: true

  test "set and get" do
    for board_module <- [BoardBenchmark.Board2DTuple] do
      board = board_module.new
      board = board_module.set(board, 6, 5, :value)
      assert board_module.get(board, 6, 5) == :value
      assert board_module.get(board, 5, 5) == nil
    end
  end
end
