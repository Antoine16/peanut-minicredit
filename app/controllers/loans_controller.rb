class LoansController < ApplicationController

  def index
    @loans = Loan.all
  end

  def show
  end

  def new
  end

  def create
    @loans = Loan.new(loan_params)
  end

  private
  def loan_params
    params.require(:loan).permit(:amount)
  end
end
