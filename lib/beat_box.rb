class BeatBox
    attr_accessor :list, :valid_beats, :rate, :voice

    def initialize
        @list = LinkedList.new
        @valid_beats = ["tee", "dee", "deep", "bop", "boop", "la", "na", "doo", "ditt", "woo", "hoo", "shu", "baa"]
        @rate = 500
        @voice = "Boing"
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
        `say -r #{@rate} -v #{@voice} #{beats}`
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

    def reset_rate
        @rate = 500
    end

    def reset_voice
        @voice = "Boing"
    end
    
end