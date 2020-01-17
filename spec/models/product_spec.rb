require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
  it { should validate_length_of(:name).is_at_most(100) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }
end
describe Product do
  it("titleizes the name of an product") do
    product = Product.create({name: "giant steps"})
    expect(product.name()).to(eq("Giant Steps"))
  end
end
