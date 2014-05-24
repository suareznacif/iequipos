class InventariosController < ApplicationController
  before_action :set_inventario, only: [:show, :edit, :update, :destroy]

  # GET /inventarios
  # GET /inventarios.json
  def index
    @inventarios = Inventario.all
  end

  # GET /inventarios/1
  # GET /inventarios/1.json
  def show
  end

  # GET /inventarios/new
  def new
    @inventario = Inventario.new
  end

  # GET /inventarios/1/edit
  def edit
  end

  # POST /inventarios
  # POST /inventarios.json
  def create
    @inventario = Inventario.new(inventario_params)

    respond_to do |format|
      if @inventario.save
        format.html { redirect_to @inventario, notice: 'El Inventario ha sido Creado' }
        format.json { render action: 'Mostrar', status: :created, location: @inventario }
      else
        format.html { render :new }
        format.json { render json: @inventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventarios/1
  # PATCH/PUT /inventarios/1.json
  def update
    respond_to do |format|
      if @inventario.update(inventario_params)
        format.html { redirect_to @inventario, notice: 'El Inventario ha sido Actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'Editar' }
        format.json { render json: @inventario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventarios/1
  # DELETE /inventarios/1.json
  def destroy
    @inventario.destroy
    respond_to do |format|
      format.html { redirect_to inventarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventario
      @inventario = Inventario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventario_params
      params.require(:inventario).permit(:marca, :modelo, :tipo, :costo, :sistema_operativo, :cpu, :ram, :disco_duro, :tarjeta_madre, :monitor, :tipo_conexion, :direccion_mac, :usuario, :area, :estado_general)
    end
end
