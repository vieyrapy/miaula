class AgregarClaveForaneaAUserDeviceDos < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key(:users, :registro_carreras) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :users, :registro_carrera_id, :integer

  	add_foreign_key(:users, :facultads) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :users, :facultad_id, :integer

  	add_foreign_key(:users, :anho_carreras) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :users, :anho_carrera_id, :integer
  end
end
