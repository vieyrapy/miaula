class CreateAsignacions < ActiveRecord::Migration[5.1]
  def change
    create_table :asignacions do |t|
      t.string :observacion

      t.timestamps
    end
  end
end
