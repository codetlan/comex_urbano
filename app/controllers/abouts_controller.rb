class AboutsController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  before_action :set_about, only: [:show, :edit, :update, :destroy]

  # GET /abouts
  # GET /abouts.json
  def index
    @abouts = About.all
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    @videos = Video.all
  end

  # GET /abouts/1
  # GET /abouts/1.json
  def show
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # GET /abouts/new
  def new
    @about = About.new
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # GET /abouts/1/edit
  def edit
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # POST /abouts
  # POST /abouts.json
  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to abouts_path, notice: 'Se creo correctamente.' }
        format.json { render action: 'list', status: :created, location: @about }
      else
        format.html { render action: 'new' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abouts/1
  # PATCH/PUT /abouts/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to abouts_path, notice: 'Se actualizaron los datos correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'list' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abouts/1
  # DELETE /abouts/1.json
  def destroy
    @about.destroy
    respond_to do |format|
      format.html { redirect_to abouts_path }
      format.json { head :no_content }
    end
  end

  def list
    @abouts = About.all
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:name, :description, :image)
    end
end
