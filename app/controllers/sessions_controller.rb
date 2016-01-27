class SessionsController < ApplicationController


  def create
    @user = User.find_by(username: user_params[:username])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      flash[:notice] = "Invalid Login Credentials"
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path, notice: "You have successfully logged out."

  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
