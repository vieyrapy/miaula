class Facultad < ApplicationRecord
	validates :nombre, presence:  true, length: {minimum: 5, maximum: 50, :message => ": Debe cargar cómo mínimo 5 caracteres y como máximo 50"}
	has_many :asignacion_aulas
	has_many :usuarios
	has_many :users
	has_many :admins
	
	has_many :registro_carreras

end
