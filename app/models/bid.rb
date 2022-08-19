class Bid < ApplicationRecord
  belongs_to :company
  has_many :bid_products

  validates :name, uniqueness: { case_sensitive: false }
end
