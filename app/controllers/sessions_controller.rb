class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome] 
  skip_before_action :verify_authenticity_token, only: [:create, :welcome]
  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to home_path
    else
      redirect_to login_path
    end
  end
  
  def logout
    # Lógica para cerrar la sesión del usuario
     session[:user_id] = nil
    # Redirigir a una página o ruta específica después de cerrar la sesión
    redirect_to root_path
  end
end


