class CharactersController < ApplicationController

  def new
    @character = Character.new
    render :new
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
    @character.details.new(detail_params)

    if @character.save
      redirect_to user_character_url(current_user, @character)
    else
      flash.now[:errors] = @character.errors.full_messages
      render :new
    end

  end

  def show
    @character = Character.find(params[:id])
    render :show
  end

  def edit

  end

  def update

  end

  def destroy
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
