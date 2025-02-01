class PaperController < ApplicationController
  def play_paper
    @player_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "won"
    elsif @computer_move == "paper"
      @result = "tied"
    elsif @computer_move == "scissors"
      @result = "lost"
    end

    render({:template => "game_templates/gameplay"})
  end
end
