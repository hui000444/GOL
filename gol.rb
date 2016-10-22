require 'pry'
class Grid < Struct.new "Grid", :cells, :x, :y
  def build
    for x in 0..self.x-1
      self.cells[x] = Array.new
      for y in 0..self.y-1
        self.cells[x] << Cell.new(x, y, 0, 0)
      end
    end
  end

  def set_state x, y, state
    self.cells[x][y].state = state
  end

  def play
    for x in 0..self.x-1
      for y in 0..self.y-1
        self.cells[x][y].neighbours = get_neighbours(x,y)
      end
    end
    for x in 0..self.x-1
      for y in 0..self.y-1
        neighbours = self.cells[x][y].neighbours
        self.set_state(x, y, 0) unless neighbours == 2 || neighbours == 3
        self.set_state(x, y, 1) if neighbours == 3 && self.cells[x][y].state == 0
      end
    end
  end

  private

  def get_neighbours x, y
    count = 0
    for val_x in x-1..x+1
      next if val_x < 0
      next if val_x > self.x - 1
      for val_y in y-1..y+1
        next if val_y < 0
        next if val_y > self.y - 1
        next if [val_x, val_y] == [x,y]
        count = count + self.cells[val_x][val_y].state
      end
    end
    return count
  end
end

class Cell < Struct.new "Cell", :x, :y, :state, :neighbours

end
