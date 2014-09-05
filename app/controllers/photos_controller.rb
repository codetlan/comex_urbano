class PhotosController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  impressionist :actions => [:show], unique: [:impressionable_type, :impressionable_id, :session_hash]

  # GET /photos
  # GET /photos.json
  def index
    @visit = params[:visit]
    @year = params[:year].present? ? params[:year] : ''
    if params[:section_id].present?
      @section = Section.joins(:category).where('sections.id = ? and categories.link = ?', params[:section_id], 'photos').first()
      @photos = @section.photos.where("to_char(photos.posted_at, 'YYYY-MM-DD') LIKE '%#{@year}%'").order('photos.posted_at DESC')
      if @visit
        @photos.sort! { |a, b| b.impressionist_count <=> a.impressionist_count }
      end
    else
      @section = Section.joins(:category).where('categories.link = ?', 'photos').order('sections.created_at ASC').first()
      @photos = @section.present? && @section.photos.present? ? @section.photos.order('photos.posted_at DESC') : []
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
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
        @publication = Publication.create(:content => @photo.name + @photo.description + @photo.tag_list.join(' '), :published_id => @photo.id, :published_type => 'Photo')
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
        @publication = Publication.find_by_published_id_and_published_type(@photo.id, 'Photo')
        if @publication
          @publication.update(:content => @photo.name + @photo.description + @photo.tag_list.join(' '))
          format.html { redirect_to '/admin/photos', notice: 'Photo was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @photo.errors, status: :unprocessable_entity }
        end
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
    params.require(:photo).permit(:name, :description, :image, :visit, :active, :section_id, :tag_list, :posted_at)
  end
end
