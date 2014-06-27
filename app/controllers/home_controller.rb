class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

  def index
    @categories = Category.all.where('active = ?', 1)
    @landing_page = LandingPage.first
    @videos = Video.all
  end

  def admin
    @categories = Category.all.where('active = ?', 1)
    @landing_page = LandingPage.first
    @landing_pages = LandingPage.all

    #respond_to do |format|
     # format.html { redirect_to(landing_pages_path) }
    #end
  end
end
