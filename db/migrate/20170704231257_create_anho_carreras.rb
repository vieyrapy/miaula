class CreateAnhoCarreras < ActiveRecord::Migration[5.1]
  def change
    create_table :anho_carreras do |t|
      t.string :anho

      t.timestamps
    end
  end
end
