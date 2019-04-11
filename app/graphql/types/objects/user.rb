Types::Objects::User = GraphQL::ObjectType.define do
  name 'ObjectsUser'

  field :id, !types.ID
  field :lname, types.String
  field :fname, types.String

  field :created_at, !Types::Scalars::Datetime
  field :updated_at, !Types::Scalars::Datetime

  field :books, -> { types[Types::Objects::Book] }  do
    resolve -> (obj, args, ctx) {
      Loaders::Association.for(User, :books).load(obj)
    }
  end

end
