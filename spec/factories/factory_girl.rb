
FactoryGirl.define do

  factory :question do
    content {Faker::Hacker.say_something_smart}

    factory :question_with_answers do
      transient do
        answers_count 4
      end
      after(:create) do |question, evaluator|
        create_list(:answer, evaluator.answers_count, question: question)
      end
    end
    # association :answer, factory: :answer
  end

  factory :answer do
    content {Faker::Hacker.abbreviation}
    # association :question, factory: :question
  end

  factory :user do
    username {Faker::name}
    email {Faker::Internet.email}
    password 'password'
    confirmation_password 'password'
  end

  factory :response do
    # association :user, factory: :user
    # association :answer, factory: :answer
  end

end
