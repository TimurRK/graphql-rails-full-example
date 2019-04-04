GrapqhqlFullExampleSchema = GraphQL::Schema.define do
  use GraphQL::Batch
  
  mutation(Types::MutationType)
  query(Types::QueryType)


  id_from_object lambda { |object, _definition, _ctx|
    GraphQL::Schema::UniqueWithinType.encode(object.class.name, object.id)
  }

  object_from_id lambda { |id, _ctx|
    return unless id.present?
    
    record_class_name, record_id = GraphQL::Schema::UniqueWithinType.decode(id)
    record_class = record_class_name.safe_constantize
    record_class&.find_by id: record_id
  }

  resolve_type lambda { |_type, obj, _ctx|
    return "::Types::Objects::#{obj.class}".safe_constantize
  }
end