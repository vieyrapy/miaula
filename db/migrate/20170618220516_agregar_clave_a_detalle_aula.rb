class AgregarClaveADetalleAula < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key(:delatte_aulas, :aulas)
  end
end
