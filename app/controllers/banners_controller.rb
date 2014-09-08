class BannersController < ApplicationController
  layout 'admin'
  before_action :set_banner, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :only => [:index, :new, :edit, :destroy]

  # GET /roles
  # GET /roles.json
  def index
    @banners = Banner.all
  end

  def show
  end


  def new
    @banner = Banner.new
  end

  def edit
  end

  def create
    @banner = Banner.new(banner_params)

    respond_to do |format|
      if @banner.save
        format.html { redirect_to banners_path, notice: 'El banner fue creado correctamente.' }
        format.json { render action: 'show', status: :created, location: @banners }
      else
        format.html { render action: 'new' }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @banner.update(banner_params)
        format.html { redirect_to banners_path, notice: 'El banner fue actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @banner.destroy
    respond_to do |format|
      format.html { redirect_to banners_path }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_banner
    @banner = Banner.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def banner_params
    params.require(:banner).permit(:photo, :landing_page_id, :link, :orden, :position)
  end
end