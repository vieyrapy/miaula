class EliminarClaveIdDeFacultadCarrera < ActiveRecord::Migration[5.1]
  def change
  	remove_column :facultads, :registro_carreras_id, :integer
  	remove_foreign_key(:facultads, :registro_carreras)

  	add_foreign_key( :registro_carreras, :facultads) #si no se sigue la convencion nombrarle a la tabla que corresponda Ejemplo: :cat_id
  	add_column :registro_carreras, :facultad_id, :integer
  end
end
