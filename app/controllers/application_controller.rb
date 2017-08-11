class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception

    # En esta seccion configuramos lo que hacemos es parametrizar Devise para poder trabajar 
    # con los nuevos campos que le agregamos 
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected

         def configure_permitted_parameters

         	########################################################
         	# Para versiones inferiores a 4.0 Devise 
            #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :email, :password) }
            #devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password,:registro_carrera_id, :facultad_id, :anho_carrera_id, :nombre, :fecha_nacimiento, :es_mujer ) }
            ########################################################

            devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
            devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password,:registro_carrera_id, :facultad_id, :anho_carrera_id, :nombre, :fecha_nacimiento, :es_mujer])
        end
        #--------------- Aca termina las configuraciones para Devise--------------------------
end
