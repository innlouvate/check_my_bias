require 'rails_helper'

describe QuestionsController do

  render_views

  it 'displays the questions and answers in the database' do
    test_question = Question.create(content: "Sample content")
    test_answer = Answer.create(content: "another test", question_id: test_question.id)
    get :index
    json = JSON.parse(response.body)
    expect(response).to be_success
    expect(json[0]["question"]["id"]).to eq(test_question.id)
    expect(json[0]["question"]["answers"][0]["answer"]["id"]).to eq(test_answer.id)
  end

end
