class AgregarClaveForaneaCarreraAFacultad < ActiveRecord::Migration[5.1]
  def change
  	  	add_foreign_key(:facultads, :registro_carreras) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  		add_column :facultads, :registro_carreras_id, :integer
  end
end
