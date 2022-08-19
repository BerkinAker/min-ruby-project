class Product < ApplicationRecord
  has_one :bid_products

  validates :name, uniqueness: { case_sensitive: false }
end
