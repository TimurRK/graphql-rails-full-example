Types::Scalars::Datetime = GraphQL::ScalarType.define do
  name 'Datetime'

  coerce_input -> (value, _ctx) { Time.zone.parse(value) }
  coerce_result -> (value, _ctx) { value.utc.iso8601 }

end