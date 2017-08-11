class AsignacionAulasController < ApplicationController
  before_action :authenticate_admin!  
  before_action :set_asignacion_aula, only: [:show, :edit, :update, :destroy]

  # GET /asignacion_aulas
  # GET /asignacion_aulas.json
  def index
    #@asignacion_aulas = AsignacionAula.all
    @asignacion_aulas = current_admin.facultad.asignacion_aulas
  end

  # GET /asignacion_aulas/1
  # GET /asignacion_aulas/1.json
  def show
  end

  # GET /asignacion_aulas/new
  def new
    @asignacion_aula = AsignacionAula.new
  end

  # GET /asignacion_aulas/1/edit
  def edit
  end

  # POST /asignacion_aulas
  # POST /asignacion_aulas.json
  def create
    @asignacion_aula = AsignacionAula.new(asignacion_aula_params)

    respond_to do |format|
      if @asignacion_aula.save
        format.html { redirect_to @asignacion_aula, notice: 'Asignacion aula was successfully created.' }
        format.json { render :show, status: :created, location: @asignacion_aula }
      else
        format.html { render :new }
        format.json { render json: @asignacion_aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asignacion_aulas/1
  # PATCH/PUT /asignacion_aulas/1.json
  def update
    respond_to do |format|
      if @asignacion_aula.update(asignacion_aula_params)
        format.html { redirect_to @asignacion_aula, notice: 'Asignacion aula was successfully updated.' }
        format.json { render :show, status: :ok, location: @asignacion_aula }
      else
        format.html { render :edit }
        format.json { render json: @asignacion_aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignacion_aulas/1
  # DELETE /asignacion_aulas/1.json
  def destroy
    @asignacion_aula.destroy
    respond_to do |format|
      format.html { redirect_to asignacion_aulas_url, notice: 'Asignacion aula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignacion_aula
      @asignacion_aula = AsignacionAula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asignacion_aula_params
      params.require(:asignacion_aula).permit(:observacion, :facultad_id, :anho_carrera_id, :aula_id, :registro_carrera_id, :semestre_id, :observacion_id)
    end
end
