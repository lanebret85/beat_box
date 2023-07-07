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

end