class PostsController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit]
  #filter_resource_access
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    #@posts = Post.all
    #if params[:tag]
    #  @posts = Post.tagged_with(params[:tag])
    #elsif params[:year]
    #  @posts = Post.search(params[:search]).where("strftime('%Y', posted_at) = ?", params[:year])
    #else
    #  @posts = Post.search(params[:search])
    #end
    @year = params[:year].present? ? params[:year] : ''
    if params[:section_id].present?
      @section = Section.joins(:category).where('sections.id = ? and categories.link = ?', params[:section_id], 'posts')
    else
      @section = Section.joins(:category).where('categories.link = ?', 'posts').order('sections.created_at ASC').limit(1)
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
    @section = Section.joins(:category).where('categories.link = ?', 'posts')
  end

  # GET /posts/1/edit
  def edit
    @section = Section.joins(:category).where('categories.link = ?', 'posts')
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        @publication = Publication.create(:content => @post.title + @post.introduction + @post.description + @post.tag_list.join(' '), :published_id => @post.id, :published_type => 'Post')
        format.html { redirect_to '/admin/posts', notice: 'Post was successfully created.' }
        format.json { render action: 'list', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        @publication = Publication.find_by_published_id(@post.id)
        @publication.update(:content => @post.title + @post.introduction + @post.description + @post.tag_list.join(' '))
        format.html { redirect_to '/admin/posts', notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'list' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to '/admin/posts' }
      format.json { head :no_content }
    end
  end

  def list
    @posts = Post.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :introduction, :description, :active, :image, :tag_list, :posted_at, :section_id)
  end
end
