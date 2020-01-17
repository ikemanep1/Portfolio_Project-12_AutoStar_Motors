require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :body }
  it { should validate_presence_of :rating }
  it { should validate_length_of(:body).is_at_least(50) }
  it { should validate_length_of(:body).is_at_most(250) }
  it {should validate_numericality_of(:rating).is_greater_than(0).is_less_than(6)}
end
