class AgregarClaveForeneasUsuario < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key(:usuarios, :registro_carreras) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :usuarios, :registro_carrera_id, :integer

  	add_foreign_key(:usuarios, :facultads) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :usuarios, :facultad_id, :integer

  	add_foreign_key(:usuarios, :anho_carreras) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :usuarios, :anho_carrera_id, :integer
  end
end
