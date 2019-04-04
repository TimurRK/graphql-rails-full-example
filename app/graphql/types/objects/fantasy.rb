Types::Objects::Fantasy = GraphQL::ObjectType.define do
  name 'ObjectsFantasy'

  field :id, !types.ID

  field :created_at, !Types::Scalars::Datetime
  field :updated_at, !Types::Scalars::Datetime

end