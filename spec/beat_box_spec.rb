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

    describe "#count" do
        it "should count the numner of nodes in the list" do
            bb = BeatBox.new
            bb.append("deep doo ditt")
            bb.append("woo hoo shu")

            expect(bb.count).to eq(6)
        end
    end

    describe "#play" do
        xit "should play the beats" do
            bb = BeatBox.new
            bb.append("deep doo ditt woo hoo shu")

            
        end
    end

    describe "#all" do
        it "should return only beats in the validation list" do
            bb = BeatBox.new
            bb.append("deep")
            
            bb.append("Mississippi")
            expect(bb.all).to eq("deep")
            
            bb.prepend("tee tee tee Mississippi")
            expect(bb.all).to eq("tee tee tee deep")
        end
    end

    describe "#rate" do
        it "should return the speed of the voice" do
            bb = BeatBox.new
            bb.append("deep dop dop deep")
            bb.rate = 100

            expect(bb.rate).to eq(100)
        end
    end

    describe "#voice" do
        it "should be able to change voice" doo
            bb = BeatBox.new
            bb.append("deep dop dop deep")
            bb.voice = "Daniel"

            expect(bb.voice).to eq("Daniel")
        end
    end

    describe "#reset_rate" do
        it "should reset the rate to 500" do
            bb = BeatBox.new
            bb.append("deep dop dop deep")
            bb.rate = 100
            bb.reset_rate

            expect(bb.reset_rate).to eq(500)
        end
    end

    describe "#reset_voice" do
        it "should reset the voice to Boing" do
            bb = BeatBox.new
            bb.append("deep dop dop deep")
            bb.voice = "Daniel"
            bb.reset_voice

            exepect(bb.reset_voice).to eq("Boing")
        end
    end

end