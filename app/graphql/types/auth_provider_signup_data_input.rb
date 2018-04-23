Types::AuthProviderSignupDataInput = GraphQL::InputObjectType.define do
  name 'AuthProviderSignupData'

  argument :credentials, Types::AuthProviderCredentialsInput
end
