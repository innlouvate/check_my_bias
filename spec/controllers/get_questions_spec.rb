ENV['RACK_ENV'] = 'test'
# require 'rack/test'
require 'rails_helper'
# require './app/models/question.rb'
# require './app/models/answer.rb'
# require './app/models/response.rb'
# require './app/models/user.rb'
# require './app/app.rb'

describe QuestionsController do

  # it "should return json" do
  #   get :index
  #   last_response.headers['Content-Type'].must_equal 'application/json'
  # end

  it 'sends a list of questions and answers' do
    FactoryGirl.create_list(:question_with_answers, 5)

    get :index

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json['questions'].length).to eq(5)
  end

end
