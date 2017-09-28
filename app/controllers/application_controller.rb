class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locations
  include SessionsHelper

  def set_locations
    @locations = Location.all
  end
end
