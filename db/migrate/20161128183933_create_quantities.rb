class CreateQuantities < ActiveRecord::Migration[5.0]
  def change
    create_table :quantities do |t|
      t.integer :sexo_id
      t.integer :estado_id
      t.integer :enfermedades_id
      t.integer :periodo_id
      t.integer :edad_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
