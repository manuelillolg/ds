module Api
module V1
  class CuadrosController < ApplicationController

skip_before_action :verify_authenticity_token

def show
      @cuadro = Cuadro.find_by(id: params[:id])
      if (@cuadro!=nil)
        render json: @cuadro, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

def index
        render json: Cuadro.all, status: :ok
end

def update
 @cuadro = Cuadro.find(params[:id])

  if @cuadro.update(project_params)
        render json: @cuadro, status: :ok
      else
        render json: @cuadro.errors, status: :unprocessable_entity
      end
end

def create
    @cuadro = Cuadro.new(project_params)

      if @cuadro.save
        render json: @cuadro, status: :created
      else
        render json: @cuadro.errors, status: :unprocessable_entity
      end
end

def destroy
    @cuadro = Cuadro.find(params[:id])
    if @cuadro.destroy
      render json: :nothing, status: :ok
    else
      render json: :nothing, status: :unprocessable_entity
    end
end
private
def project_params
      params.require(:cuadro).permit(:autor, :fecha, :estilo, :precio, :foto)
end
end
end
end

