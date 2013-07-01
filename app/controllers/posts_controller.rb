class PostsController < ApplicationController

def index
  @name = 'Doa'
  @posts = Post.all
end

def show
  @post = Post.find(params[:id])
end

def new
  
end


end