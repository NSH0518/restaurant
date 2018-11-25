# class Api::MenuItemsController < ApplicationController
#   skip_before_action :verify_authenticity_token
#   before_action :authenticat_user
   
#   def index
#       if session[:order_id].present?
#           order = Order.find session[:order_id]
#           render json: order.order_item
#       else
#           render json []
#       end
#   end
# end