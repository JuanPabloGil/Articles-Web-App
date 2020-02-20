class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @user = User.all.first
    @article = @user.articles.new(post_params)

    if @article.save
      redirect_to root_path
      flash[:success] = 'Post created Succesfully'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:article).permit(:text, :title)
  end
end
