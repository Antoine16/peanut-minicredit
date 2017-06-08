class Loan < ApplicationRecord
  attr_accessor :retrait

  monetize :capital_cents
end
