class EsculturasController < ApplicationController
  before_action :set_escultura, only: %i[ show edit update destroy ]

  # GET /esculturas or /esculturas.json
  def index
    @esculturas = Escultura.all
  end

  # GET /esculturas/1 or /esculturas/1.json
  def show
  end

  # GET /esculturas/new
  def new
    @escultura = Escultura.new
  end

  # GET /esculturas/1/edit
  def edit
  end

  # POST /esculturas or /esculturas.json
  def create
    @escultura = Escultura.new(escultura_params)

    respond_to do |format|
      if @escultura.save
        format.html { redirect_to escultura_url(@escultura), notice: "Escultura was successfully created." }
        format.json { render :show, status: :created, location: @escultura }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @escultura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esculturas/1 or /esculturas/1.json
  def update
    respond_to do |format|
      if @escultura.update(escultura_params)
        format.html { redirect_to escultura_url(@escultura), notice: "Escultura was successfully updated." }
        format.json { render :show, status: :ok, location: @escultura }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @escultura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esculturas/1 or /esculturas/1.json
  def destroy
    @escultura.destroy

    respond_to do |format|
      format.html { redirect_to esculturas_url, notice: "Escultura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_escultura
      @escultura = Escultura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def escultura_params
      params.require(:escultura).permit(:autor, :fecha, :estilo, :precio, :foto)
    end
end
