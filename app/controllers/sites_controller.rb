class SitesController < ApplicationController
  def index
    @charities = User.where(role_id: 1)
  	render :index
  end
end
