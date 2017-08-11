class AgregarClaveForaneaAUser < ActiveRecord::Migration[5.1]
  def change
  	  	add_foreign_key(:users, :facultads) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id

  end
end
