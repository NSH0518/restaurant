# == Schema Information
#
# Table name: categories
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    # has_many :menu_items, through: :order_items (write at order.rb)
    # has_many :menu_items
    has_and_belongs_to_many :menu_items
end
