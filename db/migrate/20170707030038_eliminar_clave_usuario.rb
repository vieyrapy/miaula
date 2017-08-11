class EliminarClaveUsuario < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :usuario_id, :integer
  	add_column :users, :nombre, :string
  	add_column :users, :sexo, :string
  	add_column :users, :fecha_nacimiento, :datetime
  	add_column :users, :es_mujer, :boolean, default: false
  end
end
