class AddImageColumnsToClothingItems < ActiveRecord::Migration
  def change
    add_column :shirts, :image, :string
    add_column :jackets, :image, :string
    add_column :pants, :image, :string
    add_column :ties, :image, :string
  end
end
