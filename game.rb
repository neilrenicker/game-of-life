# Rules:

# 1. Any live cell with fewer than two live neighbors dies, as if caused by under-population.
# 2. Any live cell with two or three live neighbors lives on to the next generation.
# 3. Any live cell with more than three live neighbors dies, as if by overcrowding.
# 4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.


class Neighbors

  attr_accessor :north, :northeast, :east, :southeast, :south, :southwest, :west, :northwest

  def initialize(x, y)
    @north = [x, y+1]
    @northeast = [x+1, y+1]
    @east = [x+1, y]
    @southeast = [x+1, y-1]
    @south = [x, y-1]
    @southwest = [x-1, y-1]
    @west = [x-1, y]
    @northwest = [x-1, y+1]
  end

  neighbor_scan =
    {@north => 1, @northeast => 1, @east => 1, @southeast => 0, @south => 0, @southwest => 0, @west => 0, @northwest => 0}

  neighbors = neighbor_scan.values.count(1)

  puts neighbors

end

class Cell

  attr_accessor :x, :y, :neighbors

  def initialize(x, y, neighbors)
    @x = x.to_i
    @y = y.to_i
    @neighbors = neighbors.to_i
  end

  def alive
    if neighbors < 2 
      false
    elsif neighbors > 3
      false
    elsif neighbors == 3
      true
    else
      true
    end
  end

  def born
    if neighbors == 3
      true
    else
      false
    end
  end

end