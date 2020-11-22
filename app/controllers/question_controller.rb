class QuestionController < ApplicationController
     def question
    @question = gets.chomp
  end

  def answer
    @options = ["That´s a stupid question", "Your future is full of failure", "Nothing matters anymore", "I'ts 2020 bitch"]
    @answer = @options.sample
  end

  def show
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question.ends_with?("!")
      @answer = "Thats not a question, silly."
    else
      return @answer
    end
  end
end
