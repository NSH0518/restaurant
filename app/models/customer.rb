class Customer < ApplicationRecord
    has_many :orders
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, length: {minimum: 8}, on: :create
end
