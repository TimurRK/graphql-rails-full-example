Types::Inputs::CreateBook = GraphQL::InputObjectType.define do
  name 'InputsCreateBook'

  argument :user_id, !types.ID
  
  argument :title, types.String
  
  input_field :bookable, Types::Inputs::Bookable
end
