ENV['RACK_ENV'] = 'test'
require 'rails_helper'

describe ResponsesController do

  render_views

  it 'sends a list of questions and answers' do

    expect do
      post :create, {answer_id: 1, question_id: 1, format: 'json'}
    end.to change(Response, :count).by(1)
  end

end
