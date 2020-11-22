class QuestionController < ApplicationController
     def question
    #@question = gets.chomp
  end

  def answer
    @options = ["That´s a stupid question", "Sorry, all I see is failure", "Nothing matters anymore", "Probably not, bitch please I'ts 2020.", "Is that really what you want to ask?", "maybe in a parallel universe", "Yes... if you had a lot of money", "My god this is a stupid question", "Have you tried seeking professional help?", "The position of the stars and planets say... you're an idiot", "YES! Of course... oh wait, it's you. Then the answer is no.", "you really have nothing else to do in your life, haven't you", "A six-year-old with mental problems could come up with a better question"]
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
