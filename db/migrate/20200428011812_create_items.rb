class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,                null: false
      t.string :description,         null: false
      t.string :brand
      t.string :size_id
      t.string :condition_id,           null: false
      t.string :delivery_fee_id,        null: false
      t.string :delivery_day_id,        null: false
      t.integer :price,              null: false
      t.boolean :is_deleted,         default: 0
      t.timestamps
    end
  end
end
