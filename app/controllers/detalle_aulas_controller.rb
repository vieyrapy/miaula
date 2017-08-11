class DetalleAulasController < ApplicationController
  before_action :authenticate_admin!  
  before_action :set_detalle_aula, only: [:show, :edit, :update, :destroy]

  # GET /detalle_aulas
  # GET /detalle_aulas.json
  def index
    @detalle_aulas = DetalleAula.all
  end

  # GET /detalle_aulas/1
  # GET /detalle_aulas/1.json
  def show
    @detalle_aula = DetalleAula.find(params[:id]);
  end

  # GET /detalle_aulas/new
  def new
    @detalle_aula = DetalleAula.new
  end

  # GET /detalle_aulas/1/edit
  def edit
  end

  # POST /detalle_aulas
  # POST /detalle_aulas.json
  def create
    @detalle_aula = DetalleAula.new(detalle_aula_params)

    respond_to do |format|
      if @detalle_aula.save
        format.html { redirect_to @detalle_aula, notice: 'Detalle aula was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_aula }
      else
        format.html { render :new }
        format.json { render json: @detalle_aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_aulas/1
  # PATCH/PUT /detalle_aulas/1.json
  def update
    respond_to do |format|
      if @detalle_aula.update(detalle_aula_params)
        format.html { redirect_to @detalle_aula, notice: 'Detalle aula was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_aula }
      else
        format.html { render :edit }
        format.json { render json: @detalle_aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_aulas/1
  # DELETE /detalle_aulas/1.json
  def destroy
    @detalle_aula.destroy
    respond_to do |format|
      format.html { redirect_to detalle_aulas_url, notice: 'Detalle aula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_aula
      @detalle_aula = DetalleAula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_aula_params
      params.require(:detalle_aula).permit(:observacion, :aula_id)

    end


end
