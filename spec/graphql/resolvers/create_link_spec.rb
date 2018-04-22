require 'rails_helper'

RSpec.describe Resolvers::CreateLink do
  let(:create_link) { Resolvers::CreateLink.new }
  let(:link_args) {{ url: 'http://example.com', description: 'description' }}

  def create_link(args = {})
    Resolvers::CreateLink.new.call(nil, args, {})
  end

  it 'creates a new link' do
    link = create_link(link_args)
    expect(link.persisted?).to eq true
    expect(link.description).to eq 'description'
    expect(link.url).to eq 'http://example.com'
  end
end
