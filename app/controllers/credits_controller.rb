class CreditsController < ApplicationController
  before_action :set_credit, only: [:new, :create ]

  def show
  end

  def new
  end

  def create
    @credit.save
    redirect_to new_borrower_path
  end

  private
  def credit_params
    params.require(:credit).permit(:amount, :interest, :refund_at)
  end

  def set_credit
    @credit = Credit.new(amount: session[:amount])
    @credit.refund_at = (Date.today + session[:nb_days].to_i.days)
    @credit.interest = @credit.amount * (session[:nb_days].to_i) / 170
    @credit.total_amount = @credit.amount + @credit.interest
  end

end

