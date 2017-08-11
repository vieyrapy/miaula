class RegistroCarrerasController < ApplicationController
  before_action :authenticate_admin!  
  before_action :set_registro_carrera, only: [:show, :edit, :update, :destroy]

  # GET /registro_carreras
  # GET /registro_carreras.json
  def index
    @registro_carreras = RegistroCarrera.all
  end

  # GET /registro_carreras/1
  # GET /registro_carreras/1.json
  def show
  end

  # GET /registro_carreras/new
  def new
    @registro_carrera = RegistroCarrera.new
  end

  # GET /registro_carreras/1/edit
  def edit
  end

  # POST /registro_carreras
  # POST /registro_carreras.json
  def create
    @registro_carrera = RegistroCarrera.new(registro_carrera_params)

    respond_to do |format|
      if @registro_carrera.save
        format.html { redirect_to @registro_carrera, notice: 'Registro carrera was successfully created.' }
        format.json { render :show, status: :created, location: @registro_carrera }
      else
        format.html { render :new }
        format.json { render json: @registro_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_carreras/1
  # PATCH/PUT /registro_carreras/1.json
  def update
    respond_to do |format|
      if @registro_carrera.update(registro_carrera_params)
        format.html { redirect_to @registro_carrera, notice: 'Registro carrera was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_carrera }
      else
        format.html { render :edit }
        format.json { render json: @registro_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_carreras/1
  # DELETE /registro_carreras/1.json
  def destroy
    @registro_carrera.destroy
    respond_to do |format|
      format.html { redirect_to registro_carreras_url, notice: 'Registro carrera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_carrera
      @registro_carrera = RegistroCarrera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_carrera_params
      params.require(:registro_carrera).permit(:nombreCarrera, :anho, :semestre, :facultad_id)
    end
end
