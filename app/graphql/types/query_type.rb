Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'Root queries object of the schema'
  
  field :users, !types[Types::Objects::User], field: Queries::Users
  field :user, !Types::Objects::User, field: Queries::User

  field :books, !types[Types::Objects::Book], field: Queries::Books
  field :book, !Types::Objects::Book, field: Queries::Book
end

# Query example
#
# query {
#   users {
#     id
#     fname
#     lname
#     books {
#       id
#       title
#       bookable {
#         ... on ObjectsFantasy {
#           id
#         }
#         ... on ObjectsFantastic {
#           id
#         }
#       }
#     }
#   }
# }