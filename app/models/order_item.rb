class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item
  
  # first refactor
  def manage_quantity(is_increase, is_addition, input_quantity=0)
    if is_addition
      if is_increase
        self.quantity += 1
        save
      else
        self.quantity -= 1
        if self.quantity == 0
          destroy
        else
          save
        end
      end
    else
      if input_quantity.to_i > 0
        self.quantity = input_quantity
        save
      else
        destroy
      end
    end
  end
  
  #second refactor
  # def manage_quantity(situation_id, input_quantity=0)
  #   case situation_id
  #   when 1
  #     self.quantity += 1
  #     save
  #   when 2
  #     self.quantity -= 1
  #       if self.quantity == 0
  #         destroy
  #       else
  #         save
  #       end
  #   when 3
  #     if input_quantity.to_i > 0
  #       self.quantity = input_quantity
  #       save
  #     else
  #       destroy
  #     end
  #   end
  # end
  
  
end
