class Loan < ApplicationRecord
  has_many :credits
  belongs_to :user
  monetize :amount_cents_cents
end
