ENV['RACK_ENV'] = 'test'
require 'rails_helper'

describe QuestionsController do

  it 'sends a list of questions and answers' do
    FactoryGirl.create_list(:question, 5)

    get :index

    json = JSON.parse(response.body)

    expect(response).to be_success
    expect(json.length).to eq(5)
  end

end
