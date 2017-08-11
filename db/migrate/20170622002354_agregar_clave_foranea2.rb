class AgregarClaveForanea2 < ActiveRecord::Migration[5.1]
  def change
  	add_column :detalle_aulas, :aula_id, :integer
  	add_foreign_key(:detalle_aulas, :aulas)
  end
end
