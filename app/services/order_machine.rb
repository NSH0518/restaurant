class OrderMachine
   #attr_reader :order_id, :user_id, :menu_item_id, :quantity, :menu_item
   #attr_accessor :order
   #can use the instant object to call
   
   #def initialize(order_id, user_id, menu_item_id, quantity) 
   #   @order_id = order_id
   #   @user_id = user_id
   #   @menu_item_id = menu_item_id
   #   @quantity = qty
   #   @menu_item = MenuItem.find menu_item_id
   #end
   #
   #def valid?
   #  if quantity > 0
   #    true
   #  else
   #    false
   #  end
   #end
   #2
   #def ordering
   #  if valid?
   #    find_or_create_order
   #    update_or_create_order_item
   #  end
   #end
   #1
   #def ordering
   #   find_or_create_order
   #   update_or_create_order_item
      
   #   return @order_item.menu_item.name
   #end
   
   #def find_or_create_order
   #   user = Customer.find @user_id
   #   if @order_id.present?
   #       self.order = user.orders.find @order_id
   #   else
   #       @order = Order.new(customer_id: user_id)
   #       @order.ordering_date = Date.today
   #       @order.save
   #       @self.order = order
   #   end
   #end
   
   #def update_or_create_order_item
   #    @order_item = @order.orders_item.find_by(menu_item_id: @menu_item_id)
   #    if order_item.present?
   #       order_item.quantity += @quantity.to_i
   #    else
   #       @order_item = @order.order_items.new
   #       @order_item.menu_item_id = @menu_item_id
   #       @order_item.quantity = @quantity
   #    end
   #   @order_item.save
   #end
end