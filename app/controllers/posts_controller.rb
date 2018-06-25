class PostsController < ApplicationController
  def index
    # '/' -> 모든 게시물 보여줌
    @posts = Post.all
  end

  def new
    # 새로운 게시물을 입력 받아서
  end
  
  def create
    @title = params[:title]
    @content = params[:content]
    
    Post.create(
        title: @title,
        content: @content
    )
  end

  def show
    # 게시물을 보여주는 곳
    @num = params[:id]
    #num에 저장된 아이디를 가진 Post를 뽑아서 보여준다.
    @post = Post.find(@num)
  end
  
end
