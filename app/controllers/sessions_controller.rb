class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(
    user_params[:username],
    user_params[:password]
    )
    if @user
      require_activated!(@user)
      sign_in(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["Invalid Credentials"]
      render :new
    end
  end


  def destroy
    sign_out
    redirect_to new_session_url
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
