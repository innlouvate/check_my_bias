require 'json'

class QuestionsController < ApplicationController

  respond_to :json

  def index
    @questions = Question.all
  end

end
