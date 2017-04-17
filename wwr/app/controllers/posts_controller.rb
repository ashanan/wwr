class PostsController < ApplicationController
  def index
    @posts = Post.recent
  end

  def show
  end
end
