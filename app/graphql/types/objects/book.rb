Types::Objects::Book = GraphQL::ObjectType.define do
  name 'ObjectsBook'

  field :id, !types.ID
  field :title, types.String

  field :created_at, !Types::Scalars::Datetime
  field :updated_at, !Types::Scalars::Datetime

  field :user, -> { Types::Objects::User } do
    resolve -> (obj, args, ctx) {
      Loaders::Association.for(Book, :user).load(obj)
    }
  end

  field :bookable, -> { types[Types::Objects::Bookable] }  do
    resolve -> (obj, args, ctx) {
      Loaders::ForeignKey.for(eval(obj.bookable_type), :id).load([obj.bookable_id])
    }
  end
end