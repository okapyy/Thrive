class ItemImage < ApplicationRecord
  belongs_to :item

  # validates :name, :description, :condition, :delivery_fee, :delivery_day, :price, presence: true
end
