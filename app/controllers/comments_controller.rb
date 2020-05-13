class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_back(fallback_location: root_path) 
      flash[:notice]='コメントを投稿しました'
    else
      render :show
      flash[:alert]='文字を入力してください'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end
