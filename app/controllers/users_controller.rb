class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def show
    @user = User.find(session[:user_id])
  end 

end
