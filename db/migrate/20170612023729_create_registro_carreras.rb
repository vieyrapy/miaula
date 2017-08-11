class CreateRegistroCarreras < ActiveRecord::Migration[5.1]
  def change
    create_table :registro_carreras do |t|
      t.string :nombreCarrera
      t.string :anho
      t.string :semestre

      t.timestamps
    end
  end
end
