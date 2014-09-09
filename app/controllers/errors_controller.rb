class ErrorsController < ApplicationController

  def show
    respond_to do |format|
      format.html {render 'errors/page_not_found', layout: 'comming_soon'}
    end
  end

  def not_found
    respond_to do |format|
      format.any(:htm, :html, :xls, :xlsx) { render 'errors/page_not_found', :layout => "comming_soon", :formats => [:html] }
      format.all { render nothing: true, status: 404 }
    end
  end

  def unacceptable
    respond_to do |format|
      format.html { render 'errors/page_not_found', :layout => "error_frame" }
      format.all { render nothing: true, status: 422 }
    end
  end

  def internal_error
    respond_to do |format|
      format.html { render 'errors/page_not_found', :layout => "comming_soon" }
      format.all { render nothing: true, status: 500 }
    end
  end
end
