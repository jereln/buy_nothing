class CommentsController < ApplicationController
  before_action :set_item

  def create
    @comment = @item.comments.new(comment_params)
    if @comment.save
      redirect_to @item, notice: 'Comment posted'
    else
      render @item
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_item
    @item = GiveAwayItem.find(params[:give_away_item_id])
  end
end
