require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.new(id: 1, name: 'username') }
  let(:category) { Category.new(id: 1, name: 'categoryname', priority: 1) }
  let(:article) do
    Article.new(id: 1, title: 'Ferrari', text: 'Ferrai one of the best brands..', user_id: 1,
                category_id: 1, image: 'https://i.imgur.com/8R0jcdO.jpg')
  end

  it 'Check for valid Article structure ' do
    article.text = 'a' * 100
    user.save
    category.save
    article.save
    expect(article).to be_valid
  end

  it 'Check for invalid User structure ' do
    article.text = 'a' * 100
    category.save
    article.save
    expect(article).not_to be_valid
  end

  it 'Check for valid Category structure ' do
    article.text = 'a' * 100
    user.save
    article.save
    expect(article).not_to be_valid
  end

  it 'Check for invalid text length' do
    user.save
    category.save
    article.save
    expect(article).not_to be_valid
  end

  it 'Check for invalid text length' do
    user.save
    category.save
    article.save
    expect(article).not_to be_valid
  end

  it 'Check for invalid text length' do
    article.title = 'a' * 100
    user.save
    category.save
    article.save
    expect(article).not_to be_valid
  end

  it 'Check for invalid image length' do
    article.image = 'Wroong image'
    user.save
    category.save
    article.save
    expect(article).not_to be_valid
  end

  it 'Check for Valid image length' do
    article.text = 'a' * 100
    article.image = 'Wroongimage.jpg'
    user.save
    category.save
    article.save
    expect(article).to be_valid
  end
end
