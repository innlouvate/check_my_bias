require 'json'

class QuestionsController < ApplicationController

  def index
    @quiz = Question.all
    render :json => @quiz.as_json
  end



end
