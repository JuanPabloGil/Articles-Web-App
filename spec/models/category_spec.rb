require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.new(id: 1, name: 'category_name', priority: 1) }

  it 'Check for valid category structure ' do
    category.save
    expect(category).to be_valid
  end

  it 'Check for invalid name length ' do
    category.name = 'a' * 21
    category.save
    expect(category).not_to be_valid
  end

  it 'Check for invalid priority ' do
    category.priority = 6
    category.save
    expect(category).not_to be_valid
  end
end
