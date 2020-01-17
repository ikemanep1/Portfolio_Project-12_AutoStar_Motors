class Product < ApplicationRecord
  
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country, presence: true
  validates_length_of :name, maximum: 100
  scope :search, -> (product_parameter) { where("name like ?", "%#{product_parameter}%")}

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
  end
