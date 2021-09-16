class PostsController < ApplicationController
  before_action :basic_auth

  def index
    @posts = Post.order(id: "DESC")
  end

  #def new
  #end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post}
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |user
end
