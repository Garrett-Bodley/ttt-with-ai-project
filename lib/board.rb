class Board

  attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    puts
  end
  
  def position(input)
    @cells[input.to_i - 1]
  end

  def full?
    self.turn_count == 9 ? true : false
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def turn_count
    count = 0
    @cells.each {|spot| count += 1 if spot != " "}
    count
  end

  def taken?(input)
    @cells[input.to_i - 1] == " " ? false : true
  end

  def valid_move?(input)
    if !taken?(input) && input.to_i < 10 && input.to_i > 0
      true
    else
      false
    end
  end

  def update(input, player)
    @cells[input.to_i - 1] = player.token
  end

  def current_player
    self.turn_count % 2 == 0 ? "X" : "O"
  end



end