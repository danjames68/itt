class CreateVillas < ActiveRecord::Migration
  def change
    create_table :villas do |t|
      t.string :name
      t.string :strapline
      t.integer :sleeps_min
      t.integer :sleeps_max
      t.text :description
      t.decimal :low_season_euro
      t.decimal :mid_season_euro
      t.decimal :high_season_euro

      t.timestamps
    end
  end
end
