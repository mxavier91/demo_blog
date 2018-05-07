class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end

def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)

  if @post.save
    redirect_to @post
  else
    render 'new'
  end
end

def show
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])

  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end


end

def edit
  @post = Post.find(params[:id])
end


private

def post_params
  # Somewhat of a security feature in rails. Onlys allows what is initalized to be sent to the server and to the form.
  params.require(:post).permit(:title, :content)
end

end
