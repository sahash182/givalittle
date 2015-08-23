class SitesController < ApplicationController
  def index
    @charities = User.where(role: "charity")
  	render :index
  end
end
