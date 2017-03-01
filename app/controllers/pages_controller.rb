class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :sim ]

  def home
  end

  def simul(nb_days, amount)
    {due_amount: amount * (1 + (nb_days + 2) / 100),
      refund_at: Time.now + nb_days.days
    }
  end

  def sim
    @credit = Credit.new
    @credit.amount = sim_params[:amount]
    @credit.refund_at = (Date.today + sim_params[:nb_days].to_i.days)
    @credit.interest = @credit.amount * (sim_params[:nb_days].to_i + 2) / 100
    @total_amount = @credit.amount + @credit.interest
    respond_to do |format|
        format.js  { }
      end
  end

  private
  def sim_params
    params.require(:sim).permit(:amount, :nb_days)
  end
end
