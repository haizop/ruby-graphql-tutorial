Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createLink, Function: Resolvers::CreateLink.new
end
