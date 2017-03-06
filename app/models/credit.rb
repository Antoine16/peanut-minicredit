class Credit < ApplicationRecord
  belongs_to :user
  monetize :amount_cents
  monetize :interest_cents
  monetize :total_amount_cents

  def self.payable
    @credits = Credit.where(refund_at: Date.today)
    @credits.each do |credit|
      charge = Stripe::Customer.charge(
          :amount => credit.total_amount_cents,
          :currency => "eur",
          :description => "Credit Peanut du @credit.created_at",
          :customer => credit.user.stripeid,
        )
    end
  end
end
