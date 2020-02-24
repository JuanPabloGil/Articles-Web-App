class HomeController < ApplicationController
  def index
    @categories = Category.all
    @most_voted_article = most_voted_article
  end
end
