class Company < ApplicationRecord
  has_many :bids
  
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end