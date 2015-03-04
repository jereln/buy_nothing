class GiveAwayItemsController < ApplicationController
  def index
    @items = GiveAwayItem.all
  end

  def new
    @item = GiveAwayItem.new
  end

  def create
    @item = GiveAwayItem.new(item_params)
    if @item.save
      redirect_to @item, notice: 'Item successfully posted!'
    else
      render :new
    end
  end

  def show
    @item = GiveAwayItem.find(params[:id])
  end

  private
  def item_params
    params.require(:give_away_item).permit(:title, :description, :give_away_item_image)
  end
end
