class Product < ApplicationRecord
    validates :product_name, presence: true
    validates :stock, presence: true
end
