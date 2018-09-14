require_relative "./types/query_type"

module TestSchema
  class Schema < GraphQL::Schema
    query TestSchema::Types::QueryType
  end
end
