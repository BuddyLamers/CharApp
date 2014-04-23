class CharactersController < ApplicationController

  def new

  end

  def create
    #create character


    #create detail using character.details.create()

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


end
