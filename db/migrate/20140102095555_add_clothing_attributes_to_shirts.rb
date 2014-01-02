class AddClothingAttributesToShirts < ActiveRecord::Migration
  def change
    add_column :shirts, :color_id, :integer
    add_column :shirts, :brand_id, :integer
    add_column :shirts, :type_id, :integer
    add_index :shirts, :color_id
    add_index :shirts, :brand_id
    add_index :shirts, :type_id
  end
end
