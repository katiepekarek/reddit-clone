
class CommentsController < ApplicationController

  def create
    @post=Post.find(params[:post_id])
    @comment=Comment.new(comment_params.merge(post_id: params[:post_id]))
    @comment.user_id=current_user.id
    if @comment.save
      redirect_to post_path(@post)
    else
      flash[:notice]="Your comment was not accepted!"
      redirect_to post_path(@post)
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def comment_params
    params.require(:comment).permit(:user_id,:post_id,:comment_content)
  end

end
