class LoansController < ApplicationController
  before_action :set_loan, only: [:new]

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

 def simul
  @loan = Loan.new
  @loan.capital = loan_params[:capital]
  @loan.roi = loan_params[:roi]
  @year1 = @loan.capital * (1 + @loan.roi)
  @year2 = @year1 * (1 + @loan.roi)
  @year3 = @year2 * (1 + @loan.roi)
  @year4 = @year3 * (1 + @loan.roi)
  @year5 = @year4 * (1 + @loan.roi)
  respond_to do |format|
    format.js  {}
  end
end

  private

  def loan_params
    params.require(:loan).permit(:capital, :roi)
  end

  def set_loan
    @loan = Loan.new
  end
end
