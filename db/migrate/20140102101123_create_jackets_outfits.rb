class CreateJacketsOutfits < ActiveRecord::Migration
  def change
    create_table :jackets_outfits do |t|
      t.belongs_to :jacket
      t.belongs_to :outfit
    end
  end
end
