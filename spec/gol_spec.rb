require 'spec_helper'

describe "Cell" do
  it "should die when it has 0 neighbours" do
    myGrid = Grid.new([], 2, 2)
    myGrid.build
    myGrid.set_state(0,0,1)

    myGrid.play
    
    expect(myGrid.cells[0][0].state).to eq(0)
  end

  it "should die when it has 0 neighbours" do
    myGrid = Grid.new([], 2, 2)
    myGrid.build
    myGrid.set_state(1,1,1)

    myGrid.play
    
    expect(myGrid.cells[1][1].state).to eq(0)
  end

  it "should die when it has 4 neighbours" do
    myGrid = Grid.new([], 3,3)
    myGrid.build
    myGrid.set_state(0,0,1)
    myGrid.set_state(0,1,1)
    myGrid.set_state(0,2,1)
    myGrid.set_state(1,0,1)
    myGrid.set_state(1,1,1)

    myGrid.play
    
    expect(myGrid.cells[1][1].state).to eq(0)

  end

  it "should stay alive when it has 2 neighbours" do
    myGrid = Grid.new([], 3,3)
    myGrid.build
    myGrid.set_state(0,0,1)
    myGrid.set_state(0,1,1)
    myGrid.set_state(1,1,1)

    myGrid.play
    
    expect(myGrid.cells[1][1].state).to eq(1)

  end

  it "should stay alive when it has 3 neighbours" do
    myGrid = Grid.new([], 3,3)
    myGrid.build
    myGrid.set_state(0,0,1)
    myGrid.set_state(0,1,1)
    myGrid.set_state(0,2,1)
    myGrid.set_state(1,1,1)

    myGrid.play
    
    expect(myGrid.cells[0][0].state).to eq(1)
    expect(myGrid.cells[0][1].state).to eq(1)
    expect(myGrid.cells[0][2].state).to eq(1)
    expect(myGrid.cells[1][1].state).to eq(1)

  end

  it "should come alive when it has 3 neighbours" do
    myGrid = Grid.new([], 3,3)
    myGrid.build
    myGrid.set_state(0,0,1)
    myGrid.set_state(0,1,1)
    myGrid.set_state(0,2,1)
    myGrid.set_state(1,1,0)

    myGrid.play
    
    expect(myGrid.cells[1][1].state).to eq(1)

  end
end

describe "Grid" do
end
