class OrderingsController < ApplicationController
 before_action :authenticate_user#, except: [ :index ]
  #def order
  #order_id, menu_item_name = OrderEngine(session[:order_id], session[:user_id], params[:menu_items_id], params[:quantity])
  
  #order_machine = OrderMachine.new(session[:order_id], session[:user_id], params[:menu_items_id], params[:quantity])
  #or order_id, menu_item_name = OrderMachine.new(session[:order_id], session[:user_id], params[:menu_items_id], params[:quantity]).order
  #or session[:order_id], menu_item_name = OrderMachine.new(session[:order_id], session[:user_id], params[:menu_items_id], params[:quantity]).order
  
  #order_machine.ordering
  #session[:order_id] = order_id
  #flash[:notice] = "you have just ordered #{order_machine.menu_item.name}" if got quantity then use {order_machine.quantity}
  #redirect_to action: :index
  #end
  
  def index
    if session[:order_id].present?
      @order = Order.find session[:order_id]
    end

    @categories = Category.order("name DESC")#:position
    if params[:category_id].present?
      @menu_items = MenuItem.where(category_id: params[:category_id])#.order(:position)
    else
      @menu_items = MenuItem.all # .joins(:category).order("categories.position, menu_items.position")
    end
  end
  
  
  def order
    #params[:menu_item_id]
    #params[:quantity]
    
    if session[:order_id].present?
      order = Order.find session[:order_id]
    else
      order = Order.new(customer_id: session[:user_id])
      order.ordering_date = Date.today
      order.save
      session[:order_id] = order.id
    end
    
    order_item = order.order_items.find_by(menu_item_id: params[:menu_item_id])
    
    if order_item.present?
      order_item.quantity += params[:quantity].to_i
    else
      order_item = order.order_items.new
      order_item.menu_item_id = params[:menu_item_id]
      order_item.quantity = params[:quantity]
    end
    order_item.save

    flash[:notice] = "You just ordered #{order_item.menu_item.name}."
    redirect_to action: :index
  end
  
  
  def downturn_quantity
    order_item = OrderItem.find params[:id]
    if order_item.quantity == 1
      order_item.destroy
      flash[:notice] = "You have just removed #{order_item.menu_item.name}"
    else
      order_item.quantity -= 1
      order_item.save
      #flash[:notice] = "The quantity for #{order_item.menu_item.name} now had been reduce to #{order_item.menu_item.quantity}."
    end
    redirect_to orderings_path
  end
  
  
  def upturn_quantity
    order_item = OrderItem.find params[:id]
    order_item.quantity += 1
    order_item.save
    flash[:notice] = "You just increase the quantity for #{order_item.menu_item.name}."
  
    redirect_to orderings_path
  end
  
  
  def checkout
    @order = Order.find(session[:order_id])
  end
  
  
  def update_order_items
    params[:order_item].each do |order_item_id, quantity_params|
      order_item = OrderItem.find order_item_id
      order_item.manage_quantity(nil, false, quantity_params[:quantity])
    end

    flash[:notice] = "Order updated!"
    redirect_to checkout_orderings_path
  end
end

#amend thing