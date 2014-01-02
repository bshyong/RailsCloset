class AddClothingAttributesToJackets < ActiveRecord::Migration
  def change
    add_column :jackets, :color_id, :integer
    add_column :jackets, :brand_id, :integer
    add_column :jackets, :type_id, :integer
    add_index :jackets, :color_id
    add_index :jackets, :brand_id
    add_index :jackets, :type_id
  end
end
