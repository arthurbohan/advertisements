class HomeController < ApplicationController

  def index
    @advertisements = Advertisement.published
    render home: 'index'
  end
end
