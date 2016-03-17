class Question < ActiveRecord::Base
  has_many :answers

  # def as_json
  #   super(:only => [:content]
  #         # :include => {
  #         #   :answers => {:only => [:content]},
  #         # }
  #   )
  # end

  def self.create_quiz

    @questions = self.all
    @quiz = {}
    @questions.each do |q|
      @quiz[q] = Answer.where(question_id: q)
    end
    return @quiz

  end

  def to_hash
    hash = {}
    self.attributes.each {|k,v| hash[k] = v}
    return hash
  end

end
