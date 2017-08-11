class CambiarAulaCapacidadString < ActiveRecord::Migration[5.1]
  def up
  	  change_table :aulas do |t|
      t.change :capacidad, :integer

  end
end

def down
    change_table :aulas do |t|
      t.change :capacidad, :string
    end
  end
end