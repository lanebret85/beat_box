require "rspec"
require "./lib/node"

RSpec.describe Node do

    describe "#data" do
        it "has data" do
            node = Node.new("plop")

            expect(node).to be_an_instance_of(Node)
            expect(node.data).to eq("plop")
        end
    end
    
    describe "#next_node" do
        it "should return first value from next node" do
            node = Node.new("plop")

            expect(node.next_node).to eq(nil)
        end
    end
end