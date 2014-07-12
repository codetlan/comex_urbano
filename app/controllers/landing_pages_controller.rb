class LandingPagesController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  before_action :set_landing_page, only: [:show, :edit, :update, :destroy]

  # GET /landing_pages
  # GET /landing_pages.json
  def index
    @landing_pages = LandingPage.all
    @categories = Category.all.where('active = ?', 1)
    @landing_page = LandingPage.first
  end

  # GET /landing_pages/1
  # GET /landing_pages/1.json
  def show
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # GET /landing_pages/new
  def new
    @landing_page = LandingPage.new
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all

    @landing_page.banners.build
  end

  # GET /landing_pages/1/edit
  def edit
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # POST /landing_pages
  # POST /landing_pages.json
  def create
    @landing_page = LandingPage.new(landing_page_params)

    respond_to do |format|
      if @landing_page.save

        if params[:photos]
          #===== The magic is here ;)
          params[:photos].each { |photo|
            @landing_page.banners.create(photo: photo)
          }
        end

        format.html { redirect_to '/admin/landing_pages', notice: 'Gallery was successfully created.' }
        format.json { render json: 'list', status: :created, location: @landing_page }
      else
        format.html { render action: "new" }
        format.json { render json: @landing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landing_pages/1
  # PATCH/PUT /landing_pages/1.json
  def update
    respond_to do |format|
      if @landing_page.update(landing_page_params)
        if params[:photos]
          #===== The magic is here ;)
          params[:photos].each { |photo|
            @landing_page.banners.update(photo: photo)
          }
        end
        format.html { redirect_to '/admin/landing_pages', notice: 'Landing page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'list' }
        format.json { render json: @landing_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landing_pages/1
  # DELETE /landing_pages/1.json
  def destroy
    @landing_page.destroy
    respond_to do |format|
      format.html { redirect_to '/admin/landing_pages' }
      format.json { head :no_content }
    end
  end


  def list
    @landing_pages = LandingPage.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing_page
      @landing_page = LandingPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landing_page_params
      params.require(:landing_page).permit(:facebook, :twitter, :youtube, :vimeo, :copyright, :terms, :photos)
    end
end
