class Unit < ApplicationRecord
  has_many :bid_products

  validates :name, presence:true, uniqueness: { case_sensitive: false }
end
