require 'rails_helper'

RSpec.describe Resolvers::CreateUser do
  def create_user(args = {})
    Resolvers::CreateUser.new.call(nil, args, nil)
  end

  it 'creates a new user' do
    user = create_user(
      name: 'Test User',
      authProvider: {
        credentials: {
          email: 'email@example.com',
          password: '[omitted]'
        }
      }
    )

    expect(user.persisted?).to eq true
    expect(user.name).to eq 'Test User'
    expect(user.email).to eq 'email@example.com'
  end
end
