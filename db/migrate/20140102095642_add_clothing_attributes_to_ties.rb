class AddClothingAttributesToTies < ActiveRecord::Migration
  def change
    add_column :ties, :color_id, :integer
    add_column :ties, :brand_id, :integer
    add_column :ties, :type_id, :integer
    add_index :ties, :color_id
    add_index :ties, :brand_id
    add_index :ties, :type_id
  end
end
