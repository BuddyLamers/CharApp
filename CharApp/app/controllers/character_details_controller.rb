class CharacterDetailsController < ApplicationController

  def destroy
    @detail = CharacterDetail.find(params[:id])
    @detail.destroy!
  end

end
