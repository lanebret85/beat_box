require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    
    describe "#list" do
        it "is a list" do
            list = LinkedList.new

            expect(list).to be_an_instance_of(LinkedList)
        end
    end

    describe "#head" do
        it "should have a head" do
            list = LinkedList.new
            
            expect(list.head).to eq(nil)
        end
    end

    describe "#append" do
        it "should append new data into the list" do
            list = LinkedList.new
            @data = "doop"

            expect(list.append("doop")).to eq(list)
            expect(list.head.data).to eq("doop")
            expect(list.head.next_node).to eq(nil)
        end
    end

    describe "#count" do
        xit "should count the number of nodes in the list" do
            list = LinkedList.new

            expect(list.count).to eq(1)
        end
    end

    describe "#to_string" do
        xit "should return a string of all elements in list" do
            list = LinkedList.new

            expect(list.to_string).to eq("doop")
        end
    end

end