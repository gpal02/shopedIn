class Product < ApplicationRecord
  has_and_belongs_to_many :category
  belongs_to :company
  belongs_to :order
  belongs_to :cart
end
