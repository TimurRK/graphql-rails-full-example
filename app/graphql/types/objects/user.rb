Types::Objects::User = GraphQL::ObjectType.define do
  name 'ObjectsUser'

  field :id, !types.ID
  field :lname, types.String
  field :fname, types.String

  field :books, -> { types[Types::Objects::Book] }  do
    resolve -> (obj, args, ctx) {
      Loaders::ForeignKey.for(Book, :user_id).load([obj.id])
    }
  end

end
