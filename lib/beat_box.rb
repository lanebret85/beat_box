require_relative "./linked_list"

class BeatBox
    attr_accessor :list

    def initialize(list = LinkedList.new)
        @list = list
    end
end