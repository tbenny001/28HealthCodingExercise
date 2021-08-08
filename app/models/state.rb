class State < ApplicationRecord
    has_many :state_products
    has_many :products, through: :state_products
end
