class Loan < ApplicationRecord

  belongs_to :user
  monetize :capital_cents
end
