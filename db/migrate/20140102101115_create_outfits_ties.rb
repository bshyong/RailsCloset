class CreateOutfitsTies < ActiveRecord::Migration
  def change
    create_table :outfits_ties do |t|
      t.belongs_to :outfit
      t.belongs_to :tie
    end
  end
end
