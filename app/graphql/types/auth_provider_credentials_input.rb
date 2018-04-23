Types::AuthProviderCredentialsInput = GraphQL::InputObjectType.define do
  name 'AuthProviderCredentials'

  argument :email, !types.String
  argument :password, !types.String
end
