Mutations::Books::Create = GraphQL::Relay::Mutation.define do
    name 'Create'

    input_field :data, !Types::Inputs::CreateBook

    return_field :book, !Types::Objects::Book

    resolve Resolvers::Books::Create
  end