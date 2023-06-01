class ManualidadsController < ApplicationController
  before_action :set_manualidad, only: %i[ show edit update destroy ]

  # GET /manualidads or /manualidads.json
  def index
    @manualidads = Manualidad.all
  end

  # GET /manualidads/1 or /manualidads/1.json
  def show
  end

  # GET /manualidads/new
  def new
    @manualidad = Manualidad.new
  end

  # GET /manualidads/1/edit
  def edit
  end

  # POST /manualidads or /manualidads.json
  def create
    @manualidad = Manualidad.new(manualidad_params)

    respond_to do |format|
      if @manualidad.save
        format.html { redirect_to manualidad_url(@manualidad), notice: "Manualidad was successfully created." }
        format.json { render :show, status: :created, location: @manualidad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @manualidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manualidads/1 or /manualidads/1.json
  def update
    respond_to do |format|
      if @manualidad.update(manualidad_params)
        format.html { redirect_to manualidad_url(@manualidad), notice: "Manualidad was successfully updated." }
        format.json { render :show, status: :ok, location: @manualidad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manualidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manualidads/1 or /manualidads/1.json
  def destroy
    @manualidad.destroy

    respond_to do |format|
      format.html { redirect_to manualidads_url, notice: "Manualidad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manualidad
      @manualidad = Manualidad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manualidad_params
      params.require(:manualidad).permit(:autor, :fecha, :estilo, :precio, :foto)
    end
end
