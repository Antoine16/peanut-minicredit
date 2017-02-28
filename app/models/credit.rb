class Credit < ApplicationRecord
  belongs_to :user
  monetize :amount_cents
  monetize :interest_cents
end
