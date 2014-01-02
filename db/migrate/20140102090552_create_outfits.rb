class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :name
      t.text :description
      t.datetime :last_worn
      t.integer :rating

      t.timestamps
    end
  end
end
