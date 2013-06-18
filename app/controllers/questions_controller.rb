class QuestionsController < ApplicationController

  def index
    @questions = Question.all

    respond_to do |format|
      format.html
      format.json do
        render json: @questions
      end
    end
  end

end