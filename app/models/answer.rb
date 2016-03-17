class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :responses

  # def as_json
  #   super(:only => [:content])
  # end

end
