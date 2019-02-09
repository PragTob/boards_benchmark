defmodule BoardBenchmark.Board2DTuple do

  defstruct [:impl]

  @board {
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil},
    {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil}
  }

  def new do
    %__MODULE__{impl: @board}
  end

  def get(board, x, y) do
    board.impl
    |> elem(y)
    |> elem(x)
  end

  def set(board, x, y, value) do
    tuple_board = board.impl

    target_row = elem(tuple_board, y)
    updated_row = put_elem(target_row, x, value)

    updated_board = put_elem(tuple_board, y, updated_row)

    %__MODULE__{
      impl: updated_board
    }
  end
end
