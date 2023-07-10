require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do

    describe "#beat_box" do
        it "exists" do
            bb = BeatBox.new

            expect(bb).to be_an_instance_of(BeatBox)
        end
    end

    describe "#head" do
        it "should have a head node" do
            bb = BeatBox.new

            expect(bb.list.head).to eq(nil)
        end
    end

    describe "#append" do
        it "should add a new node to the list for each piece of data" do
            bb = BeatBox.new
            bb.append("deep doo ditt")

            expect(bb.list.head.data).to eq("deep")
            expect(bb.list.head.next_node.data).to eq("doo")
        end
    end

end