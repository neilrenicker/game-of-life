# Rules:

# 1. Any live cell with fewer than two live neighbors dies, as if caused by under-population.
# 2. Any live cell with two or three live neighbors lives on to the next generation.
# 3. Any live cell with more than three live neighbors dies, as if by overcrowding.
# 4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

class Game

  @@cells = []

  def initialize
    cell = Cell.new
    @@cells = add_cell(cell)
  end

  def add_cell(cell)
    @@cells.push(cell)
  end

  def cells
    @@cells
  end

  def cell_count
    cells.count
  end

end

class Cell

  @@coordinates = {}

  def initialize(x = 0, y = 0)
    @@coordinates = { :x => x, :y => y }
  end

  def neighbor_count(neighbors)
    neighbors
  end

  def position
    @@coordinates
  end

  def alive?(neighbors)
    neighbors == 2 or neighbors == 3
  end

  def born?(neighbors)
    neighbors == 3
  end

end