class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Conectado com sucesso"
      redirect_to user
    else
      flash.now[:alert] = "havia algo errado com seus detalhes de login"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Desconectado"
    redirect_to root_path
  end

end