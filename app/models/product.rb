class Product < ApplicationRecord
  validates :title, :price, :stock_quantity, presence: true
  validates :stock_quantity, numericality: { only_integer: true }
  validates :price, numericality: {greater_than_or_equal_to: 0}
end
