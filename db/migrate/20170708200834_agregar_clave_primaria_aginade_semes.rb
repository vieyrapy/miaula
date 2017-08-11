class AgregarClavePrimariaAginadeSemes < ActiveRecord::Migration[5.1]
  def change
  	add_column :asignacion_aulas, :semestre_id, :integer
  	add_foreign_key(:asignacion_aulas, :semestres)
  end
end
