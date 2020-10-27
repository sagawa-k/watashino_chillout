class ChillSpotsController < ApplicationController
  # before_action :require_user_logged_in, only: [:create, :edit, :update, :destroy]
  before_action :set_chill_spot, only: [:show, :edit, :update, :destroy]
  # before_action :correct_user, only: [:create, :edit, :update, :destroy]

  def index
    @chill_spots = ChillSpot.order(id: :desc).page(params[:page]).per(25)
  end

  def show
  end

  def new
    @chill_spot = ChillSpot.new
  end

  def create
    @chill_spot = current_user.chill_spots.build(chill_spot_params)
    if @chill_spot.save
      flash[:success] = '正常に投稿されました'
      redirect_to @chill_spot
    else
      flash.now[:danger] = '正常に投稿されませんでした'
      render :new
    end
  end

  def edit
  end

  def update
    if @chill_spot.update(chill_spot_params)
      flash[:success] = '正常に更新されました'
      redirect_to @chill_spot
    else
      flash.now[:danger] = '更新されませんでした'
      render :edit
    end

  end

  def destroy
    @chill_spot.destroy

    flash[:success] = '正常に削除されました'
    redirect_to chill_spots_url
  end

  private
  
  def set_chill_spot
    @chill_spot = ChillSpot.find(params[:id])
  end

  def correct_user
    @chill_spot = current_user.chill_spots.find_by(id: params[:id])
    unless @chill_spot
      redirect_to root_url
    end
  end

  def chill_spot_params
    params.require(:chill_spot).permit(:name, :spot_image, :prefecture_id)
  end
end
