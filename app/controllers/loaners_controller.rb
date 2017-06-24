class LoanersController < ApplicationController

  def new
    @loaner = Loaner.new
  end

  def create
    @loaner = Loaner.new
    @loaner.email = loaner_params[:email]
    @loaner.comment = loaner_params[:comment]
    if @loaner.save
      LoanerMailer.welcome(@loaner).deliver_now
    else
      flash[:alert] = "An error occurred while delivering this message."
    end
    render :show
  end


  private
  def loaner_params
    params.require(:loaner).permit( :email, :comment )
  end

end
