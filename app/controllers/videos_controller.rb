class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    #@videos = Video.all
    @videos = Video.search(params[:search])
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    @landing_page = LandingPage.first
    @videos = Video.all
  end

  # GET /videos/new
  def new
    @video = Video.new
    @categories = Category.all.where('active = ?', 1)
    @landing_page = LandingPage.first
  end

  # GET /videos/1/edit
  def edit
    @categories = Category.all.where('active = ?', 1)
    @landing_page = LandingPage.first
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render action: 'show', status: :created, location: @video }
      else
        format.html { render action: 'new' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:name, :description, :link, :visit, :active)
    end
end
