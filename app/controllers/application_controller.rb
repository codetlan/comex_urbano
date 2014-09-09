class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_action :authenticate_user!
  #before_filter { |c| Authorization.current_user = c.current_user }

  #protected

  #def permission_denied
  #  flash[:error] = "Sorry, you are not allowed to access that page."
  #  redirect_to root_url

  def after_sign_in_path_for(resource)
    sign_in_url = url_for(:action => 'new', :controller => 'sessions', :only_path => false, :protocol => 'http')
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

  #end

  before_filter do
    resource = controller_path.singularize.gsub('/', '_').to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/404', :alert => exception.message
  end

  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, :with => :render_error
    rescue_from ActiveRecord::RecordNotFound, :with => :render_not_found
    rescue_from ActionController::RoutingError, :with => :render_not_found
  end

  #called by last route matching unmatched routes.  Raises RoutingError which will be rescued from in the same way as other exceptions.
  def raise_not_found!
    respond_to do |f|
      f.html {render :template => 'errors/page_not_found', :layout => 'comming_soon', :status => :not_found}
    end
  end

  #render 500 error
  def render_error(e)
    respond_to do |f|
      f.html { render :template => "errors/page_not_found", layout: 'comming_soon', :status => 500 }
    end
  end

  #render 404 error
  def render_not_found(e)
    respond_to do |f|
      f.html { render :template => "errors/page_not_found", layout: 'comming_soon', :status => 404 }
    end
  end
end
