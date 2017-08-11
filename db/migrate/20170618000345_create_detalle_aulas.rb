class CreateDetalleAulas < ActiveRecord::Migration[5.1]
  def change
    create_table :detalle_aulas do |t|
      t.string :observacion

      t.timestamps
    end
  end
end
