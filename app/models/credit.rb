class Credit < ApplicationRecord
  belongs_to :user

  monetize :amount_cents
  monetize :interest_cents
  monetize :total_amount_cents

end
