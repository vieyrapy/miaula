class RemoveClaveForaneaFromdetalleAulas < ActiveRecord::Migration[5.1]
  def change
  	remove_column :detalle_aulas, :aula_id
  end
end
