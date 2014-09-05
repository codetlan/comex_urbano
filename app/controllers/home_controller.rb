class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :search]

  def index
    @posts = Post.all
    @videos = []
    @photos = []
    @posts = []

    @publications = []
    @results = []
    @year = params[:year]
    @visit = params[:visit]

    Publication.all.each do |publication|
      @type = publication.published_type
      if @type == 'Video'
        result = @type.classify.constantize.find(publication.published_id)
        @publications.push(result)

        #if params[:year]
        #  if result.present? && result.posted_at.strftime('%Y') == @year
            #@videos.push(result)
        #    @publications.push(result)
        #  end
        #else
          #@videos.push(result)
        #  @publications.push(result)
        #end

        #if @visit
        #  if result.present? && result.impressionist_count.present?
        #    @publications.sort! { |a, b| b.impressionist_count <=> a.impressionist_count }
        #  end
        #else
        #  @publications.sort! { |a, b| b[:posted_at] <=> a[:posted_at] }
        #end
      elsif @type == 'Photo'
        result = @type.classify.constantize.find(publication.published_id)
        @publications.push(result)
        #if params[:year]
         # if result.present? && result.posted_at.strftime('%Y') == @year
            #@photos.push(result)
         #   @publications.push(result)
         # end
        #else
          #@photos.push(result)
         # @publications.push(result)
        #end

        #if @visit
         # if result.present? && result.impressionist_count.present?
         #   @photos.sort! { |a, b| b.impressionist_count <=> a.impressionist_count }
         #   @publications.push(result)
         # end
        #else
        #  @publications.sort! { |a, b| b[:posted_at] <=> a[:posted_at] }
        #end
      end
    end

    @publications.sort! { |a, b| b.posted_at <=> a.posted_at }

    if @visit
      @publications.sort! { |a, b| b.impressionist_count <=> a.impressionist_count }
    end

    if params[:year]
      puts 'yearrr'
      @publications.each do |publication|
        puts '111'
        if publication.posted_at.present? && publication.posted_at.strftime('%Y') == @year
          puts 'enddd'
          @results.push(publication)
        end
      end
      @publications = @results
    end

  end

  def search
    @name = params[:name]
    @videos = []
    @photos = []
    @posts = []

    @publications = Publication.where('content LIKE ?', '%'+params[:name]+'%')

    @publications.each do |publication|
      @type = publication.published_type
      if @type == 'Video'
        result = @type.classify.constantize.find(publication.published_id)
        @videos.push(result)
        @videos.sort! { |a, b| b[:posted_at] <=> a[:posted_at] }
      elsif @type == 'Photo'
        result = @type.classify.constantize.find(publication.published_id)
        @photos.push(result)
        @photos.sort! { |a, b| b[:posted_at] <=> a[:posted_at] }
      elsif @type == 'Post'
        result = @type.classify.constantize.find(publication.published_id)
        @posts.push(result)
        @posts.sort! { |a, b| b[:posted_at] <=> a[:posted_at] }
      end
    end
  end
end
