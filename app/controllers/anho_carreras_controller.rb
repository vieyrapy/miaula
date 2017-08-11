class AnhoCarrerasController < ApplicationController
  before_action :authenticate_admin!   
  before_action :set_anho_carrera, only: [:show, :edit, :update, :destroy]

  # GET /anho_carreras
  # GET /anho_carreras.json
  def index
    @anho_carreras = AnhoCarrera.all
  end

  # GET /anho_carreras/1
  # GET /anho_carreras/1.json
  def show
  end

  # GET /anho_carreras/new
  def new
    @anho_carrera = AnhoCarrera.new
  end

  # GET /anho_carreras/1/edit
  def edit
  end

  # POST /anho_carreras
  # POST /anho_carreras.json
  def create
    @anho_carrera = AnhoCarrera.new(anho_carrera_params)

    respond_to do |format|
      if @anho_carrera.save
        format.html { redirect_to @anho_carrera, notice: 'Anho carrera was successfully created.' }
        format.json { render :show, status: :created, location: @anho_carrera }
      else
        format.html { render :new }
        format.json { render json: @anho_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anho_carreras/1
  # PATCH/PUT /anho_carreras/1.json
  def update
    respond_to do |format|
      if @anho_carrera.update(anho_carrera_params)
        format.html { redirect_to @anho_carrera, notice: 'Anho carrera was successfully updated.' }
        format.json { render :show, status: :ok, location: @anho_carrera }
      else
        format.html { render :edit }
        format.json { render json: @anho_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anho_carreras/1
  # DELETE /anho_carreras/1.json
  def destroy
    @anho_carrera.destroy
    respond_to do |format|
      format.html { redirect_to anho_carreras_url, notice: 'Anho carrera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anho_carrera
      @anho_carrera = AnhoCarrera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anho_carrera_params
      params.require(:anho_carrera).permit(:anho)
    end
end
