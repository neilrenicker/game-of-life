# gol_spec.rb

require './game.rb'

describe 'Cell' do
  it "should not be alive if neighbors < 2" do
    cell = Cell.new(4,5,1)
    cell.alive.should == false
  end

  it "should not be alive if neighbors > 3" do
    cell = Cell.new(4,5,5)
    cell.alive.should == false
  end

  it "should return true if neighbors = 2 or 3" do
    cell = Cell.new(4,5,2)
    cell.alive.should == true
  end

  it "should be born if neighbors = 3" do
    cell = Cell.new(4,5,3)
    cell.born.should == true
  end

  it "should have a neighbors with x and y values based on their relationship to it" do
    cell = Cell.new(0,0,2)
    cell.north.should == [0,1]
    cell.south.should == [0,-1]
    cell.east.should == [1,0]
    cell.west.should == [-1,0]
  end

end