class EliminarSexo < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :sexo, :string
  end
end
