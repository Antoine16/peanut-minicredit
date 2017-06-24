class Credit < ApplicationRecord

  monetize :amount_cents
  monetize :interest_cents
  monetize :total_amount_cents

end
