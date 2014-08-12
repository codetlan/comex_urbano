class PublicationsController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  before_action :set_publication, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    #if params[:tag]
    #  @videos = Video.tagged_with(params[:tag])
    #elsif params[:year]
    #  @posts = Video.search(params[:search]).where("strftime('%Y', posted_at) = ?", params[:year])
    #else
    #  @videos = Video.search(params[:search])
    #end



  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @publication = Publication.new
    @section = Section.joins(:category).where('categories.link = ?', 'videos')
  end

  # GET /videos/1/edit
  def edit
    @section = Section.joins(:category).where('categories.link = ?', 'videos')
  end

  # POST /videos
  # POST /videos.json
  def create
    @publication = Publication.new(publication_params)

    respond_to do |format|
      if @publication.save
        format.html { redirect_to '/admin/videos', notice: 'Video was successfully created.' }
        format.json { render action: 'list', status: :created, location: @publication }
      else
        format.html { render action: 'new' }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to '/admin/videos', notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'list' }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to '/admin/videos' }
      format.json { head :no_content }
    end
  end

  def list
    @publications = Publication.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_publication
    @publication = Publication.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def publication_params
    params.require(:video).permit(:content, :published_id, :published_type)
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
