class AdvertisementsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy,
    :add, :cancel, :approve, :publish, :archive]

  def new
    @advertisement = Advertisement.new
  end

  def index
    if current_user.admin?
      @advertisements = Advertisement.all
    else
      @advertisements = Advertisement.all.where(user: current_user).sort_by(&:id)
    end
  end

  def show
  end


  def edit
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)
    @advertisement.user_id = current_user.id
    if @advertisement.save
      redirect_to advertisements_path,
      notice: 'Advertisement was successfully created as draft.'
    else
      render 'new'
    end
  end

  def update
    if @advertisement.update(advertisement_params.except(:advertisement_id))
      redirect_to advertisements_path,
      notice: 'Advertisement was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @advertisement.destroy
    redirect_to advertisements_path,
    notice: 'Advertisement was successfully destroyed.'
  end

  def add
    @advertisement.update(state: 1)
    redirect_to advertisements_path,
    notice: 'Advertisement was successfully added.'
  end

  def cancel
    @advertisement.update(state: 2)
    redirect_to advertisements_path,
    notice: 'Advertisement was successfully canceled.'
  end

  def approve
    @advertisement.update(state: 3)
    redirect_to advertisements_path,
    notice: 'Advertisement was successfully approved.'
  end

  def publish
    @advertisement.update(state: 4)
    redirect_to advertisements_path,
    notice: 'Advertisement was successfully published.'
  end

  def archive
    @advertisement.update(state: 5)
    redirect_to advertisements_path,
    notice: 'Advertisement was successfully archived.'
  end

  private
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    def advertisement_params
      params.require(:advertisement).permit(:content)
    end
end
