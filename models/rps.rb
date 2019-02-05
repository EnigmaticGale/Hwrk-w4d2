class Rps

  def initialize(shape1, shape2)
    @shape1 = shape1
    @shape2 = shape2
  end

  def draw?
    return "Draw!" if @shape1 == @shape2
  end

  def player_1_rock
    case @shape2
    when "paper"
      return "Player 2s paper Wins!"
    when "scissors"
      return "Player 1s rock Wins!"
    end
  end

  def player_1_paper
    case @shape2
    when "scissors"
      return "Player 2s scissors Wins!"
    when "rock"
      return "Player 1s paper Wins!"
    end
  end

  def player_1_scissors()
    case @shape2
    when "rock"
      return "Player 2s rock Wins!"
    when "paper"
      return "Player 1s scissors Wins!"
    end
  end

  def play
    return draw?() if draw?() != nil
    case @shape1
    when "rock"
      return player_1_rock()
    when "scissors"
      return player_1_scissors()
    when "paper"
      return player_1_paper()
    end
  end


end
