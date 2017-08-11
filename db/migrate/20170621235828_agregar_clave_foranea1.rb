class AgregarClaveForanea1 < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key(:detalle_aulas, :aulas)
  end
end
