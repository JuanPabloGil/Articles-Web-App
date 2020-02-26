require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(id: 1, name: 'user2istolong') }

  it 'Check for valid user structure ' do
    user.save
    expect(user).to be_valid
  end

  it 'Check for invalid user name size ' do
    user.name = 'a' * 100
    user.save
    expect(user).not_to be_valid
  end
end
