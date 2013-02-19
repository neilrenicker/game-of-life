# Need to define what neighbors are
# Need to build a system that says neighbors are based on the active cell's x and y coordinates
# Should neighbors be a class (class Neighbors) that I can run an initializer on?
# I'm defining 1 as true, 0 as false
# DON'T FEAR THE CODE. JUST WRITE STUFF.

# When this cell is initialized, it should immediately
# What do we know about this cell?
# It's going to be positioned at the coordinates (4,5) - and we know that it has 1 neighbor. So at that point what do we need to do?

#1 We need to tell the cell to die - or give it a value of 0 in my case. I've already written these rules.

# --So each cell knows what to do with itself now. But it's flat. It's a one-cell iteration.

# --I need to be able to tell the game to start with a small grid. Start with a few x / y coordinates as a SEED.

# --I need to be able to define neighbors based on their position in relation to the active cell. Do this with simple math based on the active cell's current x and y position.

# Then I need to create a way for a cell to be able to look for its neighbors instead of depending on user input. Once it can look for its neighbors, then it can be self-sufficient. Each Cell.new can do it's own thing, and interact with all of the other Cell.new's. Do this by making Neighbors initialize with an array of information about the neighbors.

# Look through the current value of each of the eight neighbor hashes. Add up the number of TRUE values. That sum is the current cell's neighbor count.

# All of the data regarding whether a cell is dead or alive will be set to variables, right? So as the program progresses, it would set cell[4,5] == 0. At that point I could later ask cell[4,5] its value, and my active cell would know after searching that cell[4,5] == 0