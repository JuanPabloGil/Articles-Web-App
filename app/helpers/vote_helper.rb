module VoteHelper
  def most_voted_article
    articles = Article.all
    best_count = 0
    best_article = Article.all.first
    articles.each do |article|
      if article.votes.size > best_count
        best_article = article
        best_count = article.votes.size
      end
    end
    best_article
  end
end
