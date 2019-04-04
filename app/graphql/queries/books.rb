Queries::Books = GraphQL::Field.define do
  name 'Index'

  type Types::Objects::Book
  resolve Resolvers::Books::Index
end