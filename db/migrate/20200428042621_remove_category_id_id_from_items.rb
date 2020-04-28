class RemoveCategoryIdIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :category_id_id, :integer
  end
end
