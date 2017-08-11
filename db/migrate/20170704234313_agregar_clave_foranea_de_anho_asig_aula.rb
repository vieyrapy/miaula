class AgregarClaveForaneaDeAnhoAsigAula < ActiveRecord::Migration[5.1]
  def change
  	add_column :asignacion_aulas, :anho_carrera_id, :integer
  	add_foreign_key(:asignacion_aulas, :anho_carrera)
  end
end
