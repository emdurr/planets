class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.string :name, null: false
      t.integer :moons
      t.boolean :rings
      t.integer :suns

      t.timestamps
    end
  end
end
