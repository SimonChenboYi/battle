class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @attack_player = player1
  end

  def attack(player)
    player.attacked
  end

  def switch_player
    @attack_player = attacked_player
  end

  def attack_player
    @attack_player
  end

  def attacked_player
    @attacked_player = [@player1, @player2].detect { |i| i != attack_player }
  end

end
