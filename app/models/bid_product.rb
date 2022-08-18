class BidProduct < ApplicationRecord
  belongs_to :bid
  belongs_to :product
  belongs_to :unit
end
