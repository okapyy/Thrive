class Item < ApplicationRecord
  belongs_to :user
  has_many :item_images
  belongs_to :category
  has_one :purchases

  before_validation :params_check 
  # after_update_commit :create_purchase

  def params_check
    if self.category_id == nil
      self.category_id = 1326
    else
      return
    end 
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