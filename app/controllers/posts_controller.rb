
class PostsController < ApplicationController

  def index
    @posts=Post.all
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)
    owner=Owner.create(user_id: current_user.id)
    @post.owner_id = owner.id
    if @post.save
      flash[:notice]="Post successfully created!"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post was successfully updated"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def show
    @comment=Comment.new
    @post=Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title,:post_content, :owner_id)
  end



end
