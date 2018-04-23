class Resolvers::CreateUser < GraphQL::Function

  argument :name, !types.String
  argument :authProvider, Types::AuthProviderSignupDataInput

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      name: args[:name],
      email: args[:authProvider][:credentials][:email],
      password: args[:authProvider][:credentials][:password]
    )
  end
end
