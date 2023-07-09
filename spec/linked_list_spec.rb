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
            list.append("doop")
            list.append("deep")

            expect(list).to be_a(LinkedList)
            expect(list.head.data).to eq("doop")
            expect(list.head.next_node.data).to eq("deep")
            expect(list.head.next_node.next_node).to eq(nil)
        end
    end

    describe "#count" do
        it "should count the number of nodes in the list" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")

            expect(list.count).to eq(2)
        end
    end

    describe "#to_string" do
        it "should return a string of all elements in list" do
            list = LinkedList.new
            list.append("doop")
            list.append("deep")

            expect(list.to_string).to eq("doop deep")
        end
    end

    describe "#prepend" do
        it "should add nodes to the beginning of the list" do
            list = LinkedList.new
            list.append("plop")
            expect(list.to_string).to eq("plop")
            
            list.append("suu")
            expect(list.to_string).to eq("plop suu")

            list.prepend("dop")
            expect(list.to_string).to eq("dop plop suu")
            expect(list.count).to eq(3)
        end
    end

    describe "#insert" do
        it "should add nodes at a given position in the list" do
            list = LinkedList.new
            list.append("plop")
            expect(list.to_string).to eq("plop")
            
            list.append("suu")
            expect(list.to_string).to eq("plop suu")

            list.prepend("dop")
            expect(list.to_string).to eq("dop plop suu")
            expect(list.count).to eq(3)

            list.insert(1, "woo")
            expect(list.to_string).to eq("dop woo plop suu")

            list.insert(0, "bap")
            expect(list.to_string).to eq("bap dop woo plop suu")

            # want to come back to this and test for cases of too high of an index
            # list.insert(10, "oop")
            # expect(list.to_string).to eq("bap dop woo plop suu oop")
        end
    end

    describe "#find" do
        it "should find and return some amount of data starting at some index" do
            list = LinkedList.new
            list.append("plop")
            list.append("woo")
            list.append("shi")
            list.append("shu")
            list.append("blop")

            expect(list.to_string).to eq("plop woo shi shu blop")
            expect(list.find(2,1)).to eq("shi")
            expect(list.find(1,3)).to eq("woo shi shu")
        end
    end

end