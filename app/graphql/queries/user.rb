Queries::User = GraphQL::Field.define do
  name 'Show'

  type Types::Objects::User
  argument :id, !types.ID
  resolve Resolvers::Users::Show
end