class BorrowersController < ApplicationController

  def new
    @borrower = Borrower.new
  end

  def create
    @borrower = Borrower.new
    @borrower.email = borrower_params[:email]
    @borrower.comment = borrower_params[:comment]
    if @borrower.save
      BorrowerMailer.welcome(@borrower).deliver_now
    else
      flash[:alert] = "An error occurred while delivering this message."
    end
    render :show
  end

  private
  def borrower_params
    params.require(:borrower).permit( :email, :comment )
  end
end
