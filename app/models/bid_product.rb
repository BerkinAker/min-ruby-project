class BidProduct < ApplicationRecord
  belongs_to :bid
  belongs_to :product
  belongs_to :unit

  validates :product_id, uniqueness: true
end
