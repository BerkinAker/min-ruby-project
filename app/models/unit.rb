class Unit < ApplicationRecord
  has_many :bid_products

  validates :name, uniqueness: { case_sensitive: false }
end
