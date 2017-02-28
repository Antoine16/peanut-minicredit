class Credit < ApplicationRecord
  belongs_to :user
  monetize :amount_cents
  monetize :interest_cents

  def simulation(nb_days, amount)
    {due_amount: amount * (1 + (nb_days + 2) / 100),
      refund_at: Time.now + nb_days.days
    }
  end
end
