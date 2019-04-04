Types::Inputs::Bookable = GraphQL::InputObjectType.define do
  name 'InputsBookable'

  argument :type, !Types::Enums::Bookable
end