class HomeController < ApplicationController

  def index
    @advertisements = Advertisement.published.page(params[:page])
    render home: 'index'
  end
end
