module GraphQL
  module PersistedQueries
    class MemoryStore

      def initialize(schema: )
        @schema = schema
      end

      def find(signature)
        store[signature]
      end

      def add(query)
        document = GraphQL.parse(query)
        store[1] = document
        store
      end

      private
      attr_reader :schema

      def validator
        @validator ||= GraphQL::StaticValidation::Validator.new(schema: schema)
      end

      def store
        @store ||= {}
      end
    end
  end
end
