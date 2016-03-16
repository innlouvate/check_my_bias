require 'rails_helper'

describe Response, type: :model do
  it { is_expected.to belong_to :answer}
  it { is_expected.to belong_to :user}
  # it { is_expected.to have_many :users }
end
