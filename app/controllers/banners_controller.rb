class BannersController < ApplicationController
  def create
    @banner = Banner.new(params[:photo])

    respond_to do |format|
      if @photo.save format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json {
          data = {thumb: view_context.image_tag(@banner.photo.url(:thumb))}
          render json: data, status: :created, location: @banner }
      else
        format.html { render action: "new" }
        format.json { render json: @banner.errors, status: :unprocessable_entity }
      end
    end
  end
end