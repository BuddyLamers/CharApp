class StarsController < ApplicationController

  def create
      # character = Character.find(params[:character_id])

      star = Star.new(user_id: current_user.id,
                      character_id: params[:character_id])
      star.save!

      redirect_to user_character_url(params[:user_id],
                                     params[:character_id])
  end

end
