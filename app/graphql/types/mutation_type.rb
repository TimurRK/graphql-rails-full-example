Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'
  description 'Root mutation object of the schema'

  field :createBook, field: Mutations::Books::Create.field
end

# Mutation example
#
# mutation {
#   createBook(input: { 
#     data: { 
#       title: "1", 
#       user_id: "163", 
#       bookable: { 
#         type: Fantastic 
#       } 
#     } 
#   }) {
#     book {
#       id
#       title
#       user {
#         id
#       }
#       bookable {
#         ... on ObjectsFantastic {
#           id
#         }
#       }
#     }
#   }
# }