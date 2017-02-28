class CreditsController < ApplicationController

  def index
    @credits = Credit.all
  end

  def new
    @credit = Credit.new
  end

  def create
    @credit = Credit.new(credit_params)
  end

  private
  def credit_params
    params.require(:credit).permit(:amount, :interest, :refund_at)
  end
end
