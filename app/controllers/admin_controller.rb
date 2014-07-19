class AdminController < ApplicationController
	before_filter :authenticate_user!
  layout 'admin'

  def index
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

end