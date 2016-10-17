class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find_by(id: session[:user_id] )
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
  end

  private 
  def user_params
    params.require(:user).permit(:name, :password, :height, :nausea, :happiness, :tickets, :admin)
  end

end
