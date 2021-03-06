class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true
  validates :description, length: {in: 5..200}
  def tax
    price * 0.09
  end

  def total
  price + tax
  end

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :orders
  has_many :categories, through: :category_products
  has_many :carted_product

    def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end
end