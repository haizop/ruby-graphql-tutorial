require 'rails_helper'

RSpec.describe Resolvers::SignInUser do
  def perform(args = {})
    Resolvers::SignInUser.new.call(nil, args, { cookies: {}, session: {}})
  end

  before(:each) do
    @user = User.create! name: 'test', email: 'test@email.com', password: 'test'
  end

  it 'creates a token' do
    result = perform(
      credentials: {
        email: @user.email,
        password: @user.password
      }
    )

    expect(result.present?).to eq true
    expect(result.token.present?).to eq true
    expect(result.user).to eq @user
  end

  it 'returns nil when handling no credentials' do
    expect(perform).to eq nil
  end

  it 'returns nil when handling wrong email' do
    expect(perform(credentials: { email: 'wrong' })).to eq nil
  end

  it 'returns nil when handling wrong password' do
    expect(perform(credentials: { email: @user.email, password: 'wrong' })).to eq nil
  end
end
