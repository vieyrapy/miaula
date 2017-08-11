class AgregarClavefDeFacultadAAdmin < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key(:admins, :facultads) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :admins, :facultad_id, :integer
  end
end
