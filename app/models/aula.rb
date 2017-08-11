class Aula < ApplicationRecord
	validates :nombre, presence: true, length: {minimum: 2, maximum: 5, :message => ": Debe cargar cómo mínimo 2 caracteres y como máximo 5"}
	validates :bloque, presence: true, length: {minimum: 1, maximum: 5, :message => ": Debe cargar cómo mínimo 1 caracteres y como máximo 5"}
	validates :capacidad, presence: true, numericality: true, length: {minimum: 1, maximum: 10, :message => ": Debe cargar cómo mínimo 1 valor numérico y como máximo 10"}
	validates :observacion, presence: true, length: {minimum: 5, maximum: 50, :message => ": Debe cargar cómo mínimo 5 caracteres y como máximo 50"}
	has_many :detalle_aulas
	has_many :asignacion_aulas
end
