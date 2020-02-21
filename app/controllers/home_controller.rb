class HomeController < ApplicationController
  def index
    @articles = Article.all
    @most_voted_article = most_voted_article
  end
end
