class CharactersController < ApplicationController

  def new

  end

  def create

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

  end


end
