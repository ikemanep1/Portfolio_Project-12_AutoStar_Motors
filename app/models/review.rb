class Review < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  validates :body, presence: true
  validates :rating, presence: true,
  :numericality => { :greater_than => 0, :less_than => 6 }
  validates_length_of :body, minimum: 50
  validates_length_of :body, maximum: 250
  end
