require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:user) { User.new(id: 1, name: 'username') }
  let(:category) { Category.new(id: 1, name: 'categoryname', priority: 1) }
  let(:article) do
    Article.new(id: 1, title: 'Ferrari', text: 'Ferrai one of the best brands..',
                user_id: 1, category_id: 1, image: 'https://i.imgur.com/8R0jcdO.jpg')
  end
  let(:vote) { Vote.new(user_id: 1, article_id: 1) }

  it 'Check for valid vote ' do
    user.save
    article.text = 'a' * 101
    category.save
    article.save
    vote.save
    expect(vote).to be_valid
  end

  it 'Check if vote is valid if the user doesnt exist  ' do
    vote.save
    expect(vote).not_to be_valid
  end

  it 'Check if vote is valid if the Article doesnt exist  ' do
    user.save
    expect(vote).not_to be_valid
  end
end
