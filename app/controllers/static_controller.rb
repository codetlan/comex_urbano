class StaticController < ActionController::Base

  def proximamente

    respond_to do |format|
      format.html {render :layout => 'comming_soon'}
    end
  end
end