class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    
    if @user.save
      flash[:notice] = "Usuario cadastrado com sucesso"
      redirect_to :root
    else
      render :action => 'new'
    end

  end

end