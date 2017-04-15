class MyAdmin::PostsController < MyAdmin::BaseController

  def index
    @posts = Post.all
  end
end