class EliminarColumnasUser < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :facultad_id, :integer
  	remove_column :users, :registro_carreras_id, :integer
  end
end
