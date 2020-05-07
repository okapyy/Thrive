class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :delivery_day
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :condition
  belongs_to_active_hash :size
  belongs_to_active_hash :delivery_method
  belongs_to_active_hash :delivery_from

  belongs_to :user, optional: true
  has_one :purchase
  has_many :item_images, dependent: :destroy
  belongs_to :category

  accepts_nested_attributes_for :item_images, allow_destroy: true
  
  # validates :item_images, 
  
  validates :category_id, 
            :size_id, 
            :delivery_from_id, 
            :condition_id, 
            :delivery_fee_id, 
            :delivery_method_id, 
            :delivery_day_id, 
            :user_id, presence: true
  validates :name, length: {maximum: 40}, presence: true
  # validates :description, length: {maximum: 1000}, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 300, less_than: 9999999}, presence: true
  before_validation :params_check 
  # after_update_commit :create_purchase

  def params_check
    if self.category_id == nil
      self.category_id = 1326
    else
      return
    end 
  end

  def self.search(search)
    return Item.all unless search
    Item.where('name like(?)', "%#{search}%")
  end

  # def create_purchase
  #   seller_id = self.user_id
  #   buyer_id = self.buyer_id
  #   item_id = self.id
  #   updates = self.saved_changes

  #   if updates.include?('is_deleted')
  #     Purchase.create(sellar_id: user_id, item_id: item_id, buyer_id: buyer_id)
  #   else
  #     return
  #   end
  # end
end
  
