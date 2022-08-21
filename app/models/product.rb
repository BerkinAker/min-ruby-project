class Product < ApplicationRecord
  has_one :bid_products

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
