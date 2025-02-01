class ScissorsController < ApplicationController
  def play_scissors
    @player_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "lost"
    elsif @computer_move == "paper"
      @result = "won"
    elsif @computer_move == "scissors"
      @result = "tied"
    end

    render({:template => "game_templates/gameplay"})
  end
end
