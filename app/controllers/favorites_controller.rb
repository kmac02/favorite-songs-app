class FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      render 'songs#index'
    end
  end

  private

  def favorite_params
    params.require(:favorite)
  end
end
