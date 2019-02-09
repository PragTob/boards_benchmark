defmodule BoardBenchmark.Board1DTuple do

  defstruct [:impl]

  @board {
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
    nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
  }

  @row_count 10

  def new do
    %__MODULE__{impl: @board}
  end

  def get(board, x, y) do
    elem(board.impl, y * @row_count + x)
  end

  def set(board, x, y, value) do
    %__MODULE__{
      impl: put_elem(board.impl, y * @row_count + x, value)
    }
  end
end
