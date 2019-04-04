Queries::Users = GraphQL::Field.define do
  name 'Index'

  type Types::Objects::User
  resolve Resolvers::Users::Index
end