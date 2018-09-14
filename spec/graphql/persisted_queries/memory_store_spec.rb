RSpec.describe GraphQL::PersistedQueries::MemoryStore do
  let(:store) { described_class.new(schema: TestSchema::Schema) }
  describe "#initialize" do
    it "requires a schema" do
      described_class.new(schema: TestSchema::Schema)
    end
  end

  describe "#add" do
    xit "parses and adds a query to the store" do

      store.add <<~QUERY
        { test }
      QUERY
    end
  end
end
