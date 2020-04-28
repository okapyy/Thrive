class Item < ApplicationRecord
  belongs_to :user
  has_many :item_images
  has_many :categories
end
