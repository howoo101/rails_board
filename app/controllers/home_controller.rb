class HomeController < ApplicationController
  before_action :set_post, only: 
  [:edit, :update, :destroy] 
  
  def index
  @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    post = Post.new(post_params)
    respond_to do |format|
      if post.save
        format.html{ redirect_to posts_path, notice: '성공'}
      else
        format.html{ render :new }
      end
    end
    
  end
  
  def destroy
    @post.destroy
    redirect_to posts_path
  end
  
  def edit
  end
  
  def update
    respond_to do |format|
        if @post.update(post_params)
          format.html {redirect_to posts_path, notice:
          '성공'}
        else 
          format.html{render :edit}
        end
    end
  end
  
  private 
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title, :text)
  end
  
  
  
end
