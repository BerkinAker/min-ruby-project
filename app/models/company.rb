class Company < ApplicationRecord
  has_many :bids
  
  validates :name, uniqueness: { case_sensitive: false }
end