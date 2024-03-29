class SectionsController < ApplicationController
  layout 'admin'

  before_filter :authenticate_user!

  before_action :set_section, only: [:show, :edit, :update, :destroy]

  # GET /sections
  # GET /sections.json
  def index
    @sections_videos = Section.joins(:category).where('categories.link = ?', 'videos')
    @sections_photos = Section.joins(:category).where('categories.link = ?', 'photos')
    @sections_posts = Section.joins(:category).where('categories.link = ?', 'posts')
  end

  # GET /sections/1
  # GET /sections/1.json
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections
  # POST /sections.json
  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to sections_path, notice: 'La sección fue creada correctamente.' }
        format.json { render action: 'list', status: :created, location: @section }
      else
        format.html { render action: 'new' }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections/1
  # PATCH/PUT /sections/1.json
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to sections_path, notice: 'La sección fue actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'list' }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.json
  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to sections_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:title, :description,  :active, :main_banner, :category_id)
    end
end
