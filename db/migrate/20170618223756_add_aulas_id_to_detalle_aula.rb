class AddAulasIdToDetalleAula < ActiveRecord::Migration[5.1]
  def change
  	
    add_reference :detalle_aulas, :aula, foreign_key: true
  end
end
