class CharactersController < ApplicationController

  def new
    @character = Character.new
    render :new
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
    @character.details.new(detail_params)
    #fails if a character is saved with no details (fork)
    if @character.save
      redirect_to character_url(@character)
    else
      flash.now[:errors] = @character.errors.full_messages
      render :new
    end

  end

  def show
    @character = Character.find(params[:id])
    @comments = @character.comments
    render :show
  end

  def edit
    @character = Character.find(params[:id])
    @details = @character.details
    render :edit

  end

  def update
    @character = Character.find(params[:id])
    errors = []
    begin
      Character.transaction do
        CharacterDetail.transaction do
          @character.update!(character_params)
          @character.details.each_with_index do |detail, i|
            detail.update!(detail_params[i])
          end
      end
    end
    rescue ActiveRecord::RecordInvalid => e
      #makes you start over if you mess up...fix later
      @character = Character.find(params[:id])
      @details = @character.details
      flash.now[:errors] = ["One or more fields were invalid"]
      render :edit
    else
      redirect_to character_url(@character)
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy!
    redirect_to user_url(current_user)
    #need to dependent destroy the details.
  end



  private
  def character_params
    params.require(:character).permit(:name, :tagline, :private)
  end

  def detail_params
    params.permit(:character_detail => [:title, :body])
                      .require(:character_detail)
                      .values
                      .reject { |data| data.values.all?(&:blank?)}
  end

end
