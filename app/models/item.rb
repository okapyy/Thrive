class Item < ApplicationRecord
  belongs_to :user
  has_many :item_images
end
