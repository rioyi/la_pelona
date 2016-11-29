class CreateQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :quantities do |t|
      t.references :sex, foreign_key: true
      t.references :state, foreign_key: true
      t.references :sickness_specific, foreign_key: true
      t.references :period, foreign_key: true
      t.references :age, foreign_key: true
      t.integer :cantidad

      t.timestamps
    end
  end
end
