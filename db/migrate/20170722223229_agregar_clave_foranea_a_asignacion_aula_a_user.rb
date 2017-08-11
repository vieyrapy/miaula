class AgregarClaveForaneaAAsignacionAulaAUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :asignacion_aulas, :user_id, :integer
  	add_foreign_key(:asignacion_aulas, :users)
  end
end
