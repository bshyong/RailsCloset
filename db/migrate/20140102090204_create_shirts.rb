class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :name
      t.datetime :last_worn
      t.datetime :date_acquired
      t.integer :price

      t.timestamps
    end
  end
end
