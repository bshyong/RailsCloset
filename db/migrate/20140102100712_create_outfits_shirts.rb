class CreateOutfitsShirts < ActiveRecord::Migration
  def change
    create_table :outfits_shirts do |t|
      t.belongs_to :outfit
      t.belongs_to :shirt
    end
  end
end
