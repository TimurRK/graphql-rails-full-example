Types::Objects::Fantastic = GraphQL::ObjectType.define do
  name 'ObjectsFantastic'

  field :id, !types.ID

  field :created_at, !Types::Scalars::Datetime
  field :updated_at, !Types::Scalars::Datetime

end