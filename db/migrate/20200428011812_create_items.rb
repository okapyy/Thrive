class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,                null: false
      t.string :description,         null: false
      t.string :brand
      t.integer :size_id
      t.integer :condition_id,           null: false
      t.integer :prefecture_id,          null: false
      t.integer :delivery_method_id,        null: false
      t.integer :delivery_fee_id,        null: false
      t.integer :delivery_day_id,        null: false
      t.integer :price,              null: false
      t.boolean :is_deleted,         default: 0
      t.timestamps
    end
  end
end
