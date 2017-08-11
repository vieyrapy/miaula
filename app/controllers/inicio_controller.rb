class InicioController < ApplicationController

    #before_action :authenticate_user!   


  # GET /asignacion_aulas
  # GET /asignacion_aulas.json
  def index

    	#@asignacion_aulas = AsignacionAula.all
 		  #@asignacion_aulas = AsignacionAula.where(user_id: current_user.id)
 		  #@asignacion_aulas = AsignacionAula.includes(:aula).where(aulas: {id: ID})
  		#@asignacion_aulas = AsignacionAula.where(anho_carrera_id: 1 )
  		#@asignacion_aulas = AsignacionAula.where(current_user.registro_carrera.asignacion_aulas)
    	#@asignacion_aulas = AsignacionAula.where(["users.registro_carrera_id=registro_carreras.id"])
    	#@productos = Producto.where(["nombre LIKE ?","%#{params[:Buscar]}%"]).order(:precio)
    	#if current_user
			   #@asignacion_aulas = current_user.facultad.asignacion_aulas
      #elsif current_admin
         #@asignacion_aulas = AsignacionAula.all
      #else
			   #@asignacion_aulas = AsignacionAula.all
		  #end
      if current_admin
         redirect_to asignacion_aulas_path
         
          elsif !current_user
            redirect_to new_user_session_path

          elsif !current_user.facultad_id 
             #@asignacion_aulas = AsignacionAula.all
             #Redireccionar a editar 
             redirect_to edit_user_registration_path
             #@asignacion_aulas = current_user.facultad.asignacion_aulas
          elsif current_user             
            @asignacion_aulas = current_user.registro_carrera.asignacion_aulas.where(anho_carrera_id: (current_user.anho_carrera_id))
            
          else
             @asignacion_aulas = AsignacionAula.all
      end
	end
  # GET /asignacion_aulas/
  def show
  end
  
end
