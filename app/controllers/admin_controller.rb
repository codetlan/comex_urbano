class AdminController < ApplicationController
	layout 'admin'

	def index
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all



    #respond_to do |format|
     # format.html { redirect_to(landing_pages_path) }
    #end
  end
end