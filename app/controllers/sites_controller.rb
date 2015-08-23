class SitesController < ApplicationController
  def index
    @charities = User.where(role: "charity")
  end
end
