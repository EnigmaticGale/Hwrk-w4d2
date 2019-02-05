require 'minitest/autorun'
require_relative '../models/rps.rb'

class Testrps < Minitest::Test

  def test_rock_paper
    game1 = Rps.new("rock","paper")
    assert_equal("Player 2s paper Wins!", game1.play)
  end

  def test_paper_rock
    game1 = Rps.new("paper","rock")
    assert_equal("Player 1s paper Wins!", game1.play)
  end

  def test_scissors_paper
    game1 = Rps.new("scissors","paper")
    assert_equal("Player 1s scissors Wins!", game1.play)
  end

  def test_paper_scissors
    game1 = Rps.new("paper","scissors")
    assert_equal("Player 2s scissors Wins!", game1.play)
  end

  def test_scissors_rock
    game1 = Rps.new("scissors","rock")
    assert_equal("Player 2s rock Wins!", game1.play)
  end

  def test_rock_scissors
    game1 = Rps.new("rock","scissors")
    assert_equal("Player 1s rock Wins!", game1.play)
  end

  def test_rock_rock
    game1 = Rps.new("rock","rock")
    assert_equal("Draw!", game1.play)
  end

  def test_paper_paper
    game1 = Rps.new("paper","paper")
    assert_equal("Draw!", game1.play)
  end






end
