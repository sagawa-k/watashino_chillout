class ChilloutsController < ApplicationController
  before_action :set_chill, only: [:show, :edit, :update, :destroy]

  def index
    @chillouts = Chillout.order(id: :desc).page(params[:page]).per(3)

  end

  def show
  end

  def new
    @chillout = Chillout.new
  end

  def create
    binding.pry
    @chillout = Chillout.new(chillout_params)
    if @chillout.save
      flash[:success] = '正常に投稿されました'
      redirect_to @chillout
    else
      flash.now[:danger] = '正常に投稿されませんでした'
      render :new
    end
  end

  def edit
  end

  def update
    if @chillout.update(chillout_params)
      flash[:success] = '正常に更新されました'
      redirect_to @chillout
    else
      flash.now[:danger] = '更新されませんでした'
      render :edit
    end

  end

  def destroy
    @chillout.destroy

    flash[:success] = '正常に削除されました'
    redirect_to chillouts_url
  end

  private
  
  def set_chill
    @chillout = Chillout.find(params[:id])
  end

  def chillout_params
    params.require(:chillout).permit(:title, :content, :category).merge(category: params[:category].to_i)
  end
end
