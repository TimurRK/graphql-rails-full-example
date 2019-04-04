Types::Objects::Bookable = GraphQL::UnionType.define do
  name "ObjectsBookable"
  
  possible_types [Types::Objects::Fantastic, Types::Objects::Fantasy]
end
