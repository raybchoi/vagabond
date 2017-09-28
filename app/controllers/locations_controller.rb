class LocationsController < ApplicationController

  def index
  end
  def show
    @location = Location.friendly.find(params[:slug])
    @locationposts = @location.posts.order(created_at: :desc).page(params[:page]).per(5)
  end

end
