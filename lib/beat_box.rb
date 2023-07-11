# require_relative "./linked_list"

class BeatBox
    attr_accessor :list, :valid_beats

    def initialize(list = LinkedList.new)
        @list = list
        @valid_beats = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu"]
    end

    def append(data)
        split_data = data.split(" ")
        split_data.each do |data|
            if @valid_beats.include?(data)
                @list.append(data)
            end
        end
    end

    def count
        @list.count
    end

    def play
        beats = @list.to_string
        `say -r 200 -v Karen #{beats}`
    end

    def all
        @list.to_string
    end

    def prepend(data)
        split_data = data.split(" ")
        split_data.each do |data|
            if @valid_beats.include?(data)
                @list.prepend(data)
            end
        end
    end

end