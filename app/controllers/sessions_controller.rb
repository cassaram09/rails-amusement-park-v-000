class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(id: params[:user][:id])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/signin'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
