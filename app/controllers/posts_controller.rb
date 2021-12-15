class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).reverse_order.per(9)
    @tags = Post.tag_counts_on(:tags).most_used(20)
    @post = 
  end

  def tag
    @tags = Post.tag_counts_on(:tags).most_used(20)
    @post = Post.tagged_with(params[:format]).reverse_order
  end

  def show
    @post = Post.find(params[:id])
    @tags = @post.tag_counts_on(:tags)
  end

  def new
     @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
    @tags = @post.tag_counts_on(:tags)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

   private

  def post_params
    params.require(:post).permit(:title, :body, :image, :user_id, :tag_list, :start_time)
  end

end
