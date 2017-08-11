class AgregarClaveForaneaDeAulaAsigAula < ActiveRecord::Migration[5.1]
  def change
  	add_column :asignacion_aulas, :aulas_id, :integer
  	add_foreign_key(:asignacion_aulas, :aulas)
  end
end
