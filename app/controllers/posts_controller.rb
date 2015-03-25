
class PostsController < ApplicationController

  def index
    @posts=Post.all
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)
    if @post.save
      flash[:notice]="Post successfully created!"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def show
    @post=Post.find(params[:id])
  end

  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:title,:post_content)
  end

end
