class BorrowersController < ApplicationController

  def new
    @borrower = Borrower.new
  end

  def create
    @borrower = Borrower.new
    @borrower.email = borrower_params[:email]
    @borrower.comment = borrower_params[:comment]
    @borrower.save
    render :show
  end

  private
  def borrower_params
    params.require(:borrower).permit( :email, :comment )
  end
end
