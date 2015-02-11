class GiveAwayItemsController < ApplicationController
  def index
    @items = GiveAwayItem.all
  end

  def new
  end
end
