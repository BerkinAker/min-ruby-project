class BidProduct < ApplicationRecord
  belongs_to :bid
  belongs_to :product
  belongs_to :unit

  validates :product_id, presence: true, uniqueness: true
  validates :quantity, presence: true ,numericality: { other_than: 0 }
end
