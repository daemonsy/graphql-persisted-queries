module TestSchema
  module Types
    class QueryType < GraphQL::Schema::Object
      field :test, String, 'field returning value test', null: false

      def test
        'test'
      end
    end
  end
end
