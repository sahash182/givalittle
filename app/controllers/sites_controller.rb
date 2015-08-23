class SitesController < ApplicationController
  def index
    @charities = Charity.all
  	render :index
  end
end
