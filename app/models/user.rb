class User < ApplicationRecord
  has_one :cart
  has_many :cart_products, through: :cart
  has_many :products, through: :cart
  has_one :inventory, foreign_key: 'seller_id', required: false
  has_secure_password

end