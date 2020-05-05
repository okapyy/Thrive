class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name,      null: false
      t.text :description, null: false
      t.string :bland
      t.string :size
      t.string :condition, null: false
      t.string :delivery_fee, null: false
      t.string :delivery_day, null: false
      t.integer :price, null: false
      t.boolean :is_deleted, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
