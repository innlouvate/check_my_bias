require 'rails_helper'

describe Question, type: :model do
  it { is_expected.to have_many :answers }
  # it { is_expected.to have_many :users }
  # it { is_expected.to belong_to :survey }
end
