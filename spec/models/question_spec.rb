require 'rails_helper'

describe Question, type: :model do
  it { is_expected.to have_many :answers }
end
