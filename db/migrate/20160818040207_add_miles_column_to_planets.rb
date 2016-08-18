class AddMilesColumnToPlanets < ActiveRecord::Migration[5.0]
  def change
    add_column :planets, :miles_to_sun, :string
  end
end
