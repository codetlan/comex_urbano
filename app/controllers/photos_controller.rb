class PhotosController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    #@photos = Photo.all
    if params[:tag]
      @photos = Photo.tagged_with(params[:tag])
    else
      @photos = Photo.search(params[:search])
    end
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    if params[:section_id].present?
      @section = Section.joins(:category).where('sections.id = ? and categories.link = ?', params[:section_id], 'photos')
    else
      @section = Section.joins(:category).where('categories.link = ?', 'photos').order('sections.created_at ASC').limit(1)
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    @videos = Video.all
  end

  # GET /photos/new
  def new
    @photo = Photo.new
    @section = Section.joins(:category).where('categories.link = ?', 'photos')
  end

  # GET /photos/1/edit
  def edit
    @section = Section.joins(:category).where('categories.link = ?', 'photos')
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to '/admin/photos', notice: 'Photo was successfully created.' }
        format.json { render action: 'list', status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to '/admin/photos', notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'list' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to '/admin/photos' }
      format.json { head :no_content }
    end
  end

  def list
    @photos = Photo.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_photo
    @photo = Photo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def photo_params
    params.require(:photo).permit(:name, :description, :image, :visit, :active, :section_id, :tag_list)
  end
end
