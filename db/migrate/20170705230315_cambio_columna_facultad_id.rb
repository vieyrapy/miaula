class CambioColumnaFacultadId < ActiveRecord::Migration[5.1]
  def self.up
     rename_column :asignacion_aulas, :facultads_id, :facultad_id
     rename_column :asignacion_aulas, :aulas_id, :aula_id
     rename_column :asignacion_aulas, :registro_carreras_id, :registro_carrera_id
   end

   def self.down

   end
end