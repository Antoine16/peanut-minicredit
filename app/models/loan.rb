class Loan < ApplicationRecord
  has_many :credits
  belongs_to :user
  monetize :capital_cents
end
