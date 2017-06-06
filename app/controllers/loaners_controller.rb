class LoanersController < ApplicationController

  def new
    @loaner = Loaner.new
  end

  def create
    @loaner = Loaner.new
    @loaner.email = loaner_params[:email]
    @loaner.comment = loaner_params[:comment]
    @loaner.save
    render :show
  end


  private
  def loaner_params
    params.require(:loaner).permit( :email, :comment )
  end

end
