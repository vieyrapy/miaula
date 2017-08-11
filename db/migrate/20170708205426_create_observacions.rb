class CreateObservacions < ActiveRecord::Migration[5.1]
  def change
    create_table :observacions do |t|
      t.string :nombreDia

      t.timestamps
    end
  end
end
