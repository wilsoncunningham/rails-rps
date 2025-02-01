class RockController < ApplicationController
  def play_rock
    @player_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "tied"
    elsif @computer_move == "paper"
      @result = "lost"
    elsif @computer_move == "scissors"
      @result = "won"
    end

    render({:template => "game_templates/gameplay"})
  end
end
