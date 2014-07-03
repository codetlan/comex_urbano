class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]

  def index
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    @videos = Video.all
  end

end
