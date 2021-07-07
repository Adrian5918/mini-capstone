class CartedProduct < ApplicationRecord
  has_many :product
  belongs_to :user
  belongs_to :product
end
