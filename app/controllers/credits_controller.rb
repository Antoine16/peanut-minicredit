class CreditsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :sim ]
  before_action :set_credit, only: [:show, :create]


  def index
    @credits = Credit.all
  end

  def show

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

  def set_credit
    @credit = Credit.where(state: 'pending').find(params[:id])
  end

end
