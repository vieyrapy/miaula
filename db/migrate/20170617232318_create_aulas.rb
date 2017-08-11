class CreateAulas < ActiveRecord::Migration[5.1]
  def change
    create_table :aulas do |t|
      t.string :nombre
      t.string :bloque
      t.string :capacidad
      t.string :observacion

      t.timestamps
    end
  end
end
