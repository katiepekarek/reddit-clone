
class CommentsController < ApplicationController

  def new

  end

  def create

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
