class OrderEngine
    # def self.order(order_id, user_id, menu_items_id, qty)
    #  create another method for this if else 
    #  user = Customer.find user_id
    #
    #  if order_id = present?
    #    order = user.order.find order_id
    #  else
    #    order = Order.new(customer_id: user_id)
    #   order.ordeing_date = Date.today
    #   order.save
    #  end
    #  
    #  order_item = order.orders_item.find_by(menu_item_id: menu_item_id)
    #
    #  if order_item.present?
    #    order_item.quantity += qty.to_i
    #  else
    #    order_item = order.order_items.new
    #    order_item.menu_item_id = menu_item_id
    #    order_item.quantity = qty
    #  end
    #  order_item.save
    #
    #  return order.id, order_item.menu_item,name
    # end
end