class StaticController < ActionController::Base
  layout 'application'

  def proximamente
    respond_to do |format|
      format.html {render :layout => 'comming_soon'}
    end
  end

  def contacto  
  end

  def privacidad 
  end

  def terminos
    
  end
end