class VideosController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    #@videos = Video.all
    if params[:tag]
      @videos = Video.tagged_with(params[:tag])
    else
      @videos = Video.search(params[:search])
    end
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    if params[:section_id].present?
      @section = Section.joins(:category).where('sections.id = ? and categories.link = ?', params[:section_id], 'videos')
    else
      @section = Section.joins(:category).where('categories.link = ?', 'videos').order('sections.created_at ASC').limit(1)
    end
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
    @section = Section.joins(:category).where('categories.link = ?', 'videos')
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
    @section = Section.joins(:category).where('categories.link = ?', 'videos')
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to '/admin/videos', notice: 'Video was successfully created.' }
        format.json { render action: 'list', status: :created, location: @video }
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
        format.html { redirect_to '/admin/videos', notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'list' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to '/admin/videos' }
      format.json { head :no_content }
    end
  end

  def list
    @videos = Video.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_video
    @video = Video.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def video_params
    params.require(:video).permit(:name, :description, :content, :link, :visit, :active, :section_id, :tag_list, :posted_at)
  end
end
