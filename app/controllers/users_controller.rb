class UsersController < ApplicationController

  def start_backbone
    render :start_backbone
  end

  def new
    @user = User.new
    render :new
  end

  def index
      @users = User.all
      render :index
  end

  def create
    @user = User.new(user_params)
    #@user.set_activation_token
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


  def show #OLD RAILS SHOW
    @user = User.find(params[:id])
    variable = params[:variable]
    @characters = @user.characters
    case variable
    when "all"
      @characters = @user.characters
    when "forked"
      @characters = @user.forked_characters
    when "starred"
      @characters = @user.starred_characters
    when "public"
      @characters = @user.public_characters
    when "private"
      @characters = @user.private_characters
    end

    render :show

  end


  def showw #BACKBONE SHOW

    #includes only works for associations
    # @user = User.includes(:starred_characters,
#                            :forked_characters,
#                            :public_characters,
#                            :private_characters
#                            ).find(params[:id])

    @user = User.find(params[:id])
    @characters = @user.characters
    @starred_characters = @user.starred_characters
 #    @starred_characters = @user.starred_characters
 #    @forked_characters = @user.forked_characters
 #    @public_characters = @user.public_characters
 #    @private_characters = @user.private_characters
    render :start_backbone
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
