module Api
module V1
  class EsculturasController < ApplicationController

skip_before_action :verify_authenticity_token

def show
      @escultura = Escultura.find_by(id: params[:id])
      if (@project!=nil)
        render json: @project, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

def index
        render json: Escultura.all, status: :ok
end

def update
 @escultura = Escultura.find(params[:id])

  if @escultura.update(project_params)
        render json: @escultura, status: :ok
      else
        render json: @escultura.errors, status: :unprocessable_entity
      end
end

def create
    @escultura = Escultura.new(project_params)

      if @escultura.save
        render json: @escultura, status: :created
      else
        render json: @escultura.errors, status: :unprocessable_entity
      end
end

def destroy
    @escultura = Escultura.find(params[:id])
    if @escultura.destroy
      render json: :nothing, status: :ok
    else
      render json: :nothing, status: :unprocessable_entity
    end
end
private
def project_params
      params.require(:escultura).permit(:autor, :fecha, :estilo, :precio, :foto)
end
end
end
end

