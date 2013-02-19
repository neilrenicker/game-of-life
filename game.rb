# Rules:

# 1. Any live cell with fewer than two live neighbors dies, as if caused by under-population.
# 2. Any live cell with two or three live neighbors lives on to the next generation.
# 3. Any live cell with more than three live neighbors dies, as if by overcrowding.
# 4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

# class Grid

#   cell1 = [0,0]
#   cell2 = [0,1]
#   cell3 = [0,-1]

# end

# class Neighbors

#   def neighbors
#     [@north, @northeast, @east, @southeast, @south, @southwest, @west, @northwest]
#   end

#   # this is a test hash:
#   # neighbors = {[1,1] => true, [1,0] => false, [1,-1] => false, [0,1] => false, [0,-1] => false, [-1,0] => false, [-1,1] => true, [-1,-1] => true}

#   neighbor_count = 0

#   while neighbors.has_value?(true)
#     neighbor_count = (neighbor_count + 1)
#   end

# end

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

  def north
    [x, y+1]
  end

  def northeast
    [x+1, y+1]
  end

  def east
    [x+1, y]
  end

  def southeast
    [x+1, y-1]
  end

  def south
    [x, y-1]
  end

  def southwest
    [x-1, y-1]
  end

  def west
    [x-1, y]
  end

  def northwest
    [x-1, y+1]
  end

  def born
    if neighbors == 3
      true
    else
      false
    end
  end

end