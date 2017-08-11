class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #Prueba de branch
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	belongs_to :anho_carrera, optional: true
	belongs_to :facultad, optional: true
	belongs_to :registro_carrera, optional: true
	belongs_to :asignacion_aula, optional: true
end