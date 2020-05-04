class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :last_name,       null: false
      t.string :first_name,      null: false
      t.string :last_name_kana,  null: false
      t.string :first_name_kana, null: false
      t.string :postal_code,     null: false
      t.integer :prefecture_id,  null: false
      t.string :city,            null: false
      t.string :address,         null: false
      t.string :building
      t.string :tel
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end