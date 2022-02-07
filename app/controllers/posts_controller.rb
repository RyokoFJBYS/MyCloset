class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).reverse_order.per(9)
    @tags = Post.tag_counts_on(:tags).most_used(20)
  end

  def tag
    @tags = Post.tag_counts_on(:tags).most_used(20)
    @post = Post.page(params[:page]).tagged_with(params[:format]).reverse_order.per(9)
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
    if @post.save
      redirect_to user_path(@post.user_id)
    else
      render :new
    end
  end

  def my_post_tag
    posts = current_user.posts.select do |post|
      post.taggings.any?  do |tagging|
        tagging.tag.name == params[:format]
      end
    end
    ids = posts.pluck(:id)

    @posts = Post.where(id: ids).page(params[:page]).reverse_order.per(9)
    @tags = current_user.posts.tag_counts_on(:tags).most_used(20)
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
