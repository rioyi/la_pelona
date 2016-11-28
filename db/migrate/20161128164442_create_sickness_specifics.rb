class CreateSicknessSpecifics < ActiveRecord::Migration[5.0]
  def change
    create_table :sickness_specifics do |t|
      t.string :name
      t.string :cod
      t.integer :sickness_general_id

      t.timestamps
    end
  end
end
