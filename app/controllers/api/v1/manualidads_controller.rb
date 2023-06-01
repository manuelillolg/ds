module Api
module V1
  class ManualidadsController < ApplicationController

skip_before_action :verify_authenticity_token

def show
      @manualidad = Manualidad.find_by(id: params[:id])
      if (@project!=nil)
        render json: @project, status: :ok
  else
       render json: :nothing, status: :not_found
    end
end

def index
        render json: Manualidad.all, status: :ok
end

def update
 @manualidad = Manualidad.find(params[:id])

  if @manualidad.update(project_params)
        render json: @manualidad, status: :ok
      else
        render json: @manualidad.errors, status: :unprocessable_entity
      end
end

def create
    @manualidad = Manualidad.new(project_params)

      if @manualidad.save
        render json: @manualidad, status: :created
      else
        render json: @manualidad.errors, status: :unprocessable_entity
      end
end

def destroy
    @manualidad = Manualidad.find(params[:id])
    if @manualidad.destroy
      render json: :nothing, status: :ok
    else
      render json: :nothing, status: :unprocessable_entity
    end
end
private
def project_params
      params.require(:manualidad).permit(:autor, :fecha, :estilo, :precio, :foto)
end
end
end
end

