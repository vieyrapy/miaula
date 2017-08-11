class AgregarClaveForaneaAUserAulaAsignada < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key(:users, :asignacion_aulas) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :users, :asignacion_aula_id, :integer
  end
end
