class AnhoCarrera < ApplicationRecord
	has_many :asignacion_aulas
	has_many :usuarios
	has_many :users
end
