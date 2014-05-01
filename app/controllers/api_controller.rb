class ApiController < ApplicationController

  def user

  end

  def users

  end

  def characters

  end

  def character
    @user = User.all.first
   @character = Character.all.first
   render 'character.json'
  end
end
