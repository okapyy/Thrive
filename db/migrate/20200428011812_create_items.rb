class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,                null: false
      t.string :description,         null: false
      t.string :brand
      t.integer :size_id
      t.integer :condition_id,           null: false
      t.integer :delivery_method_id,        null: false
      t.integer :delivery_fee_id,        null: false
      t.integer :delivery_day_id,        null: false
      t.integer :delivery_from_id,          null: false
      t.integer :price,              null: false
      t.integer :buyer_id,           default: 0
      t.references :user,             foreign_key: true
      t.references :category,             foreign_key: true
      t.boolean :is_deleted,         default: 0
      t.references :user, null: false, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end