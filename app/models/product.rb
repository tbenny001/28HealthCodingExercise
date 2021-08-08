class Product < ApplicationRecord
    has_many :state_products
    has_many :states, through: :state_products
end
