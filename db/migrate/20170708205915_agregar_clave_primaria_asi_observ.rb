class AgregarClavePrimariaAsiObserv < ActiveRecord::Migration[5.1]
  def change
  	add_column :asignacion_aulas, :observacion_id, :integer
  	add_foreign_key(:asignacion_aulas, :observacions)
  end
end
