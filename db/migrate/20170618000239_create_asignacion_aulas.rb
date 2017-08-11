class CreateAsignacionAulas < ActiveRecord::Migration[5.1]
  def change
    create_table :asignacion_aulas do |t|
      t.string :observacion

      t.timestamps
    end
  end
end
