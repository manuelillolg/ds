class SessionsController < ApplicationController
  def new
  end

  def create
  end
  
  def logout
    # Lógica para cerrar la sesión del usuario

    # Redirigir a una página o ruta específica después de cerrar la sesión
    redirect_to root_path
  end
end
