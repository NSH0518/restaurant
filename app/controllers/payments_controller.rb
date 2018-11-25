class PaymentsController < ApplicationController
  
  def new
    @order = Order.find session[:order_id]
  end
  
  
  def create
    flash[:notice] = "Payment has been confirmed. You order is now being processed."
    session[:order_id] = nil
    redirect_to orderings_path
  end
end
