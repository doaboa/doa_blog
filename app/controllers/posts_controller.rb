class PostsController < ApplicationController

def index
  @name = 'Doa'
  @posts = Post.all
end

end