class CuadrosController < ApplicationController
  before_action :set_cuadro, only: %i[ show edit update destroy ]

  # GET /cuadros or /cuadros.json
  def index
    @cuadros = Cuadro.all
  end

  # GET /cuadros/1 or /cuadros/1.json
  def show
  end

  # GET /cuadros/new
  def new
    @cuadro = Cuadro.new
  end

  # GET /cuadros/1/edit
  def edit
  end

  # POST /cuadros or /cuadros.json
  def create
    @cuadro = Cuadro.new(cuadro_params)

    respond_to do |format|
      if @cuadro.save
        format.html { redirect_to cuadro_url(@cuadro), notice: "Cuadro was successfully created." }
        format.json { render :show, status: :created, location: @cuadro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cuadro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuadros/1 or /cuadros/1.json
  def update
    respond_to do |format|
      if @cuadro.update(cuadro_params)
        format.html { redirect_to cuadro_url(@cuadro), notice: "Cuadro was successfully updated." }
        format.json { render :show, status: :ok, location: @cuadro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cuadro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuadros/1 or /cuadros/1.json
  def destroy
    @cuadro.destroy

    respond_to do |format|
      format.html { redirect_to cuadros_url, notice: "Cuadro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuadro
      @cuadro = Cuadro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cuadro_params
      params.require(:cuadro).permit(:autor, :fecha, :estilo, :precio, :foto)
    end
end
