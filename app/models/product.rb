class Product < ApplicationRecord
  has_one :bid_product, :dependent => :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
