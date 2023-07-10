# require_relative "./linked_list"

class BeatBox
    attr_accessor :list

    def initialize(list = LinkedList.new)
        @list = list
    end

    def append(data)
        split_data = data.split(" ")
        split_data.each do |data|
            @list.append(data)
        end
    end

end