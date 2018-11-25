class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items
  has_many :menu_items, through: :order_items
  
  validates :customer, presence: true
  
  def total_amount
    total = 0.00
    order_items.each do |order_item|
      total += order_item.quantity * order_item.menu_item.unit_price
    end
    total
  end
end
