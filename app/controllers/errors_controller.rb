class ErrorsController < ApplicationController

  def show
    render 'errors/page_not_found', layout: 'comming_soon'
  end
end
