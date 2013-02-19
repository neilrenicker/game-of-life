# gol_spec.rb

require './game.rb'

describe 'Cell' do
  it "should not be alive if it has fewer than 2 neighbors" do
    cell = Cell.new
    cell.alive?(1).should == false
  end

  it "should not be alive if it has more than 3 neighbors" do
    cell = Cell.new
    cell.alive?(4).should == false
  end

  it "should remain alive if it has 2 or 3 neighbors" do
    cell = Cell.new
    cell.alive?(2).should == true
  end

  it "should be born if it has exactly 3 neighbors" do
    cell = Cell.new
    cell.born?(3).should == true
  end

  it "should count 1 neighbor if it has 1 neighbor" do
    cell = Cell.new
    cell.neighbor_count(1).should == 1
  end

  it "should count 2 neighbors if it has 2 neighbors" do
    cell = Cell.new
    cell.neighbor_count(2).should == 2
  end

end

describe 'Game' do
  xit "should be able to create a new cell" do
    game = Game.new
    cell.alive?(2) == true
  end

  xit "should know the location of all live cells" do
    game = Game.new
  end
end