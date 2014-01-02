class AddClothingAttributesToPants < ActiveRecord::Migration
  def change
    add_column :pants, :color_id, :integer
    add_column :pants, :brand_id, :integer
    add_column :pants, :type_id, :integer
    add_index :pants, :color_id
    add_index :pants, :brand_id
    add_index :pants, :type_id
  end
end
