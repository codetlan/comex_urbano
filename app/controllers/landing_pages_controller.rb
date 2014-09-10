class LandingPagesController < ApplicationController
  layout 'admin', :only => [:index, :list, :new, :edit]

  before_filter :authenticate_user!, :only => [:index, :new, :edit]
  before_action :set_landing_page, only: [:show, :edit, :update, :destroy]

  # GET /landing_pages
  # GET /landing_pages.json
  def index
    @landing_page = LandingPage.first
    @images = Image.all
  end

  # GET /landing_pages/1
  # GET /landing_pages/1.json
  def show
  end

  # GET /landing_pages/new
  def new
    @landing_page = LandingPage.new

    5.times { @landing_page.images.build }
  end

  # GET /landing_pages/1/edit
  def edit
    @landing_page = LandingPage.find(params[:id])
   #1.times { @landing_page.images.build }
  end

  # POST /landing_pages
  # POST /landing_pages.json
  def create
    @landing_page = LandingPage.new(landing_page_params)

    respond_to do |format|
      if @landing_page.save
        format.html { redirect_to landing_pages_path, notice: 'Los datos se crearon correctamente.' }
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
        format.html { redirect_to landing_pages_path, notice: 'Los datos se actualizaron correctamente.' }
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
      format.html { redirect_to landing_pages_path }
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
      params.require(:landing_page).permit(:facebook, :twitter, :youtube, :vimeo, :copyright, :terms, :photos, :privacity, :contact, images_attributes:[:id, :photo, :_destroy, :name, :description, :link, :position])
    end
end
