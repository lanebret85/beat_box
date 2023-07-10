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
        `say -r 200 -v Karen #{beats}`
    end

    # refactor to make valid_beats an attribute and then filter out
    # for not okay inputs in append method, prepend method, etc.
    # look at "any" loop/method
    def all
        valid_beats = ["tee", "dee", "deep", "bop", "boop", "la", "na"]

        beats = @list.to_string

        valid_beats.each do |beat|
            if beats.include?(beat) == false
                beats.delete(beat)
            end
        end

        beats
    end

end