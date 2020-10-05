class HomeController < ApplicationController

  def index
    @advertisements = Advertisement.all
    if user_signed_in?
      redirect_to advertisements_path
    else
      render home: 'index'
    end
  end
end
