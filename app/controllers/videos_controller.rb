class VideosController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  impressionist :actions => [:show], unique: [:impressionable_type, :impressionable_id, :session_hash]

  # GET /videos
  # GET /videos.json
  def index
    @visit = params[:visit]
    @year = params[:year].present? ? params[:year] : ''
    if params[:section_id].present?
      @section = Section.joins(:category).where('sections.id = ? and categories.link = ?', params[:section_id], 'videos').first()
      @videos = @section.videos.where("to_char(videos.posted_at, 'YYYY-MM-DD') LIKE '%#{@year}%'").order('videos.posted_at DESC')
      if @visit
        @videos.sort! { |a, b| b.impressionist_count <=> a.impressionist_count }
      end
    else
      @section = Section.joins(:category).where('categories.link = ?', 'videos').order('sections.created_at ASC').first()
      @videos = @section.videos.order('videos.posted_at DESC')
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @video = Video.new
    @section = Section.joins(:category).where('categories.link = ?', 'videos')
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
        @publication = Publication.create(:content => @video.content + @video.name + @video.description + @video.tag_list.join(' '), :published_id => @video.id, :published_type => 'Video')
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
        @publication = Publication.find_by_published_id_and_published_type(@video.id, 'Video')
        @publication.update(:content => @video.content + @video.name + @video.description + @video.tag_list.join(' '))
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

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
