# require_relative "./linked_list"

class BeatBox
    attr_accessor :list, :valid_beats

    def initialize(list = LinkedList.new)
        @list = LinkedList.new
        @valid_beats = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu"]
        # @rate = 500
        # @voice = "Boing"
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
        `say -r 500 -v Boing #{beats}`
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

    def rate=(x)
        # beats = @list.to_string
        # `say -r #{rate} -v Boing #{beats}`
    end

end