class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :search]

  def index
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    @videos = Video.all
    @banners = Banner.all
    @posts = Post.all
  end

  def search
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end
end
