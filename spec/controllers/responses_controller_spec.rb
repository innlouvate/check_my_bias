ENV['RACK_ENV'] = 'test'
require 'rails_helper'

describe ResponsesController do

  render_views

  it 'creates the response in the database' do
    expect do
      post :create, {answer_id: 1, question_id: 1, format: 'json'}
    end.to change(Response, :count).by(1)
    expect

  end

end
