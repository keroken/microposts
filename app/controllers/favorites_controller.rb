class FavoritesController < ApplicationController
  
  def create
    @favorite = Favorite.find_or_create_by(micropost_id: params[:micropost_id], user_id: current_user.id)
    render layout: nil
  end

  def destroy
    @favorite = Favorite.find_by(params[:id])
    @favorite.destroy
  end
end