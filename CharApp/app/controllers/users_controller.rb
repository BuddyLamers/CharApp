class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    @user.set_activation_token
    if @user.save
      sign_in(@user)
      UserMailer.activation_email(@user).deliver!
      redirect_to root_url, notice: "Successfuly created account! Check your inbox!"
      # render :show
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def activate
    @user = User.find_by_activation_token(params[:activation_token])


    if params[:activation_token] && @user
      @user.activate!
      sign_in(@user)
      redirect_to @user, notice: "Account Successfully Activated"
    else
      raise ActiveRecord::RecordNotFound.new
    end


  end


  def edit

  end

  def update

  end

  def destroy

  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end