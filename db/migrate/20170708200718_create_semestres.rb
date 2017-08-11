class CreateSemestres < ActiveRecord::Migration[5.1]
  def change
    create_table :semestres do |t|
      t.string :nombreSemestre

      t.timestamps
    end
  end
end
