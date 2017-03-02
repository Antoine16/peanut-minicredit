class PaymentsController < ApplicationController
  before_action :set_credit

  def new

  end

  def create
  end

  private

  def set_credit
    @credit = Credit.where(state: 'pending').find(params[:credit_id])
  end
end
