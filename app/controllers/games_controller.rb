class GamesController < ApplicationController
  def new
    alphabet = ('a'..'z').to_a
    @letters = alphabet.sample(10)
  end

  def score
    letters = JSON.parse(params[:letters])
    word = JSON.parse(params[:word])
    if letters.include? word
      @score = "Congrats"
    else
      @score = "Sorry"
    end
  end
end
