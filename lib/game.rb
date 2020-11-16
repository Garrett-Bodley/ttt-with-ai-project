require_relative './players/human'

class Game

  extend Players::Human
  attr_accessor :player_1, :player_2, :board

  def initialize(player_1=nil, player_2=nil, board=nil)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  def current_player
  end

  def won?
  end

  def draw?
  end

  def over?
  end

  def winner
  end

  def turn
  end

end