class StaticController < ActionController::Base

  def videos
    @videos = Video.all
  end

  def galeria
    @photos = Photo.all
  end

  def blog
    @posts = Post.all
  end

  def about
    #@posts = Post.all
  end

  def proximamente
    @landing_pages = LandingPage.all

    respond_to do |format|
      format.html {render :layout => 'comming_soon'}
    end
  end
end