class AgregarClaveForaneaDeFacultadAsigAula < ActiveRecord::Migration[5.1]
  def change
  	add_column :asignacion_aulas, :facultads_id, :integer
  	add_foreign_key(:asignacion_aulas, :facultads)
  end
end
