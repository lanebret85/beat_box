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

    def count
        @list.count
    end

    def play
        beats = @list.to_string
        `say -r 500 -v Boing #{beats}`
    end
end