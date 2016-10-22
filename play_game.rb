require "./gol.rb"

def printLine game
  game.cells.each do |row|
    toPrint = ""
    row.each do |cell|
      toPrint << cell.state.to_s
    end
    print toPrint.gsub("0", " ").gsub("1", "#")
    print "\n"
  end
end
myGame = Grid.new([], 50, 50)
myGame.build

myGame.set_state(25,23,1)
myGame.set_state(25,24,1)
myGame.set_state(25,25,1)

myGame.set_state(26,23,1)
myGame.set_state(26,25,1)

myGame.set_state(27,23,1)
myGame.set_state(27,24,1)
myGame.set_state(27,25,1)

myGame.set_state(28,23,1)
myGame.set_state(28,24,1)
myGame.set_state(28,25,1)

myGame.set_state(29,23,1)
myGame.set_state(29,24,1)
myGame.set_state(29,25,1)

myGame.set_state(30,23,1)
myGame.set_state(30,24,1)
myGame.set_state(30,25,1)

myGame.set_state(31,23,1)
myGame.set_state(31,25,1)

myGame.set_state(32,23,1)
myGame.set_state(32,24,1)
myGame.set_state(32,25,1)
for i in 1..100 do
  myGame.play
  printLine myGame
  sleep 0.5
end
