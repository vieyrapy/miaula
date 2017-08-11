class Usuario < ApplicationRecord
	validates :nombre, presence: true, length: {minimum: 5, maximum: 50, :message => ": Debe cargar cómo mínimo 5 caracteres y como máximo 50"}
	validates :ci, presence: true, length: {minimum: 5, maximum: 10, :message => ": Debe cargar cómo mínimo 5 caracteres y como máximo 10"}
	belongs_to :anho_carrera 
	belongs_to :facultad
	belongs_to :registro_carrera
end
