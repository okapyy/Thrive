class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true

  validates :last_name, :first_name, :last_name_kana, :first_name_kana, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]+\z/ }
  validates :postal_code, :prefecture_id, :city, :address, presence: true
end
