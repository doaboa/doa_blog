class PostsController < ApplicationController

def index
  @name = 'Doa'
  @posts = Post.all
end

def show
  @post = Post.find(params[:id])
end

def new
  @post = Post.new
end

def create
  @post = Post.create(params[:post])
  
  if @post.save == true
    redirect_to posts_path
  else
    render action: 'new'
  end
end

def edit
  @post = Post.find(params[:id]) 
end

def update
  @post = Post.find(params[:id])

  if @post.update_attributes(params[:post])
    redirect_to @post
  else
    render action: 'edit'
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end