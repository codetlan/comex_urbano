class UsersController < ApplicationController
  load_and_authorize_resource
  layout 'admin'

  before_filter :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @users = User.all
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  end

  # GET /videos/new
  def new
    @user = User.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to '/admin/users', notice: 'Video was successfully created.' }
        format.json { render action: '/admin/users', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    #respond_to do |format|
    #  @user = User.find(params[:id])
    #  email_changed = @user.email != params[:user][:email]
    #  password_changed = !params[:user][:password].empty?

    #  successfully_updated = if email_changed or password_changed
    #                           @user.update_with_password(user_params)
    #                         else
    #                           @user.update_without_password(user_params)
    #                         end

    #  if successfully_updated
    #    format.html { redirect_to '/admin/users', notice: 'Video was successfully updated.' }
    #    format.json { head :no_content }
    #  else
    #    puts  @user.errors.to_yaml
    #    format.html { redirect_to '/admin/users', notice: @user.errors }
    #    format.json { render json: @user.errors, status: :unprocessable_entity }
    #  end
    #end
    #account_update_params = devise_parameter_sanitizer.sanitize(:account_update)
    #account_update_params = user_params

    # required for settings form to submit when password is left blank
    #if account_update_params[:password].blank?
    #  account_update_params.delete("password")
    #  account_update_params.delete("password_confirmation")
    #end

    @user = User.find(params[:id])
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    if @user.update_attributes(user_params)
      flash[:success] = "Edit Successful."
      redirect_to '/admin/users'
    else
      render 'edit'
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to '/admin/users' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    #params.require(:user).permit(:email, :password, :password_confirmation).tap do |whitelisted|
     # whitelisted[:role_ids] = params[:user][:role_ids]
    #end
    params.require(:user).permit(:email, :password, :password_confirmation, :role_ids => [])
  end
end
