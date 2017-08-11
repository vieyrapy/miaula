class AgregarClaveForaneaDeRegCarreAsigAula < ActiveRecord::Migration[5.1]
  def change
  	add_column :asignacion_aulas, :registro_carreras_id, :integer
  	add_foreign_key(:asignacion_aulas, :registro_carreras)
  end
end
