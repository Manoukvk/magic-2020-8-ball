class QuestionController < ApplicationController
     def question
    @question = gets.chomp
  end

  def answer
    @answer = ["That´s a stupid question", "Your future is full of failure", "Nothing matters anymore", "I'ts 2020 bitch"]
  end

  def show
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question.ends_with?("!")
      @answer = "Thats not a question, silly."
    else
      return @answer
      @answer = answer.sample
    end
  end
end
