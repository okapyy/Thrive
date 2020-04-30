class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :delivery_day
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :condition
  belongs_to_active_hash :size
  belongs_to_active_hash :delivery_method
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :category

  belongs_to :user, optional: true
  has_one :purchase
  has_many :item_images
  # has_many :categories

  validates :name, :description, :size_id, :condition_id, :delivery_fee_id, :delivery_day_id, :price, presence: true
end
