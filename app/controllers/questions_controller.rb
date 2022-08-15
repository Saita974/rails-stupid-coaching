# class QuestionsController < ApplicationController
#   def ask
#   end

#   def answer
#     @question = params[:input]
#     if @question == "I am going to work"
#       @answer = "Great!"
#     elsif @question.end_with?('?')
#       @answer = "Silly question, get dressed and go to work!"
#     else
#       @answer = "I don't care, get dressed and go to work!"
#     end
#   end
# end
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = answer_question(params[:input])
  end

  private

  def answer_question(question)
    if question == 'I am going to work'
      return 'Great!'
    elsif question.end_with?('?')
      return 'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
