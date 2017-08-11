class AgregarClaveForeneaRegCarrera < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key(:users, :registro_carreras) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :users, :registro_carreras_id, :integer
  end
end
