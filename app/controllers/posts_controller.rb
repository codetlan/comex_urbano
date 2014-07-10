class PostsController < ApplicationController
  layout 'admin', :only => [:list, :new, :edit]

  before_filter :authenticate_user!, :only => [:list, :new, :edit, :show]
  #filter_resource_access
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    #@posts = Post.all
    @posts = Post.search(params[:search])
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
    @videos = Video.all
  end

  # GET /posts/new
  def new
    @post = Post.new
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # GET /posts/1/edit
  def edit
    @categories = Category.all.where('active = ?', 1)
    @landing_pages = LandingPage.all
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to '/admin/posts/list', notice: 'Post was successfully created.' }
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
        format.html { redirect_to '/admin/posts/list', notice: 'Post was successfully updated.' }
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
      format.html { redirect_to '/admin/posts/list' }
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
      params.require(:post).permit(:title, :introduction, :description, :active, :image)
    end
end
