class AddDeliveryfromToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :delivery_from, :string
  end
end

