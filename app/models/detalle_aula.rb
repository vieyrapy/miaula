class DetalleAula < ApplicationRecord
	validates :observacion, presence: true, length: {minimum: 1, maximum: 50, :message => ": Debe cargar cómo mínimo 1 caracteres y como máximo 50"}
	belongs_to :aula
end
