class FavoritesController < ApplicationController
  def index
    @incomplete_favorites = Favorite.where(complete: false)
    @complete_favorites = Favorite.where(complete: true)
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.create!(params[:favorite])
    respond_to do |format|
      format.html { redirect_to favorites_url }
      format.js
    end
  end

  def update_total
    @favorite = Favorite.find(params[:id])
    @favorite.update_attributes!(params[:favorite])
    respond_to do |format|
      format.html { redirect_to favorites_url }
      format.js
    end
  end
