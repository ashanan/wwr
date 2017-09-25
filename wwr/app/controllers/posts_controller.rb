class PostsController < ApplicationController
  def index
    @posts = Post.recent
  end

  def show
  end

  def new
    basic_http_authentication

    @post = Post.new
  end

  def create
    basic_http_authentication
    
    post = Post.new(post_params)
    if post.save
      redirect_to '/'
    else
      @errors = post.errors.full_messages
      render post
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :original_title, :body, :amazon_us_url, :amazon_uk_url, :original_url)
  end

  def basic_http_authentication
    authenticate_or_request_with_http_basic do |user,pass| 
      user == ENV["WWR_ADMIN_USERNAME"] && pass = ENV["WWR_ADMIN_PASSWORD"] 
    end 
  end
end
