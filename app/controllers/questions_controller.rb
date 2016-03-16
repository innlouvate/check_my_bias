require 'json'

class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @quiz = {}
    @questions.each do |q|
      @quiz[q.content] = Answer.where(question_id: q).as_json
    end
    render :json => @quiz
  end



end
