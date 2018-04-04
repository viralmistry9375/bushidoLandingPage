class SitesController < ApplicationController

  def show
    @site = Site.find_by_slug(params[:slug] || 'home')

    respond_to do |format|
      format.html
    end
  end
end
