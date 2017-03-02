class CreditsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :sim ]


  def index
    @credits = Credit.all
  end

  def show
    @credit = Credit.find(params[:credit_id])
    order = Order.create!(
      credit_sku: @credit.sku, amount: @credit.price, state: 'pending')

    redirect_to new_user_credit_path(order)
  end

  def new
    @credit = Credit.new
  end

  def create
    @credit = Credit.new(credit_params)
    @credit.user = current_user
    if @credit.save
      redirect_to user_credit_path
    else
      render :new
    end
  end

  private
  def credit_params
    params.require(:credit).permit(:amount, :interest, :refund_at)
  end

end
