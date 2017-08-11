class EliminarCampoUserId < ActiveRecord::Migration[5.1]
  def change
  	remove_column :asignacion_aulas, :user_id, :integer
  	remove_foreign_key(:asignacion_aulas, :users)
  end
end
