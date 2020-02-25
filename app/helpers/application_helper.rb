module ApplicationHelper
  def vote_or_unvote(article)
    if logged_in?
      vote = Vote.find_by(article: article, user: current_user)
      if vote
        link_to (fa_icon 'thumbs-o-down'), article_vote_path(id: vote.id, article_id: article.id),
                class: 'label-form', method: :delete
      else
        link_to (fa_icon 'thumbs-o-up '), article_votes_path(article_id: article.id), class: 'label-form', method: :post
      end
    else
      link_to('Must be logged in to vote', login_path)
    end
  end
end
