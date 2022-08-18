class Bid < ApplicationRecord
  belongs_to :company
  has_many :bid_products
end
