class CreateMoons < ActiveRecord::Migration[5.0]
  def change
    create_table :moons do |t|
      t.string :name, null: false
      t.string :mass
      t.belongs_to :planet

      t.timestamps
    end
  end
end
