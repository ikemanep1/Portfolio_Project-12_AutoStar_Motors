class Product < ApplicationRecord

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country, presence: true
  validates_length_of :name, maximum: 100
  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost, products.country, COUNT(reviews.id) AS reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
    .first
    )}
  scope :USA, -> { where(country: "USA") }
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
  end
