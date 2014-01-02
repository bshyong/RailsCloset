class CreateOutfitsPants < ActiveRecord::Migration
  def change
    create_table :outfits_pants do |t|
      t.belongs_to :outfit
      t.belongs_to :pant
    end
  end
end
