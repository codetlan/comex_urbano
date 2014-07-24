class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :search]

  def index
    @posts = Post.all
  end

  def search
    @name = params[:name]
    @videos = []
    @photos = []
    @posts = []
    #@videos = Video.tagged_with(params[:name])
    #@photos = Photo.tagged_with(params[:name])
    #@posts = Post.tagged_with(params[:name])

    @publications = Publication.where('content LIKE ?', '%'+params[:name]+'%')

    @publications.each do |publication|
      @type = publication.published_type
      if @type == 'Video'
        result = @type.classify.constantize.find(publication.published_id)
        @videos.push(result)
      elsif @type == 'Photo'
        result = @type.classify.constantize.find(publication.published_id)
        @photos.push(result)
      elsif @type == 'Post'
        result = @type.classify.constantize.find(publication.published_id)
        @posts.push(result)
      end
    end
  end
end
