class CreateFacultads < ActiveRecord::Migration[5.1]
  def change
    create_table :facultads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
