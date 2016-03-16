class Question < ActiveRecord::Base
  has_many :answers

  def as_json
    super(:only => [:content]
          # :include => {
          #   :answers => {:only => [:content]},
          # }
    )
  end

end
