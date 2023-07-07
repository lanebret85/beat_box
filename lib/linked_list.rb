class LinkedList
    attr_reader :list

    def initialize
        @list = list
    end

    def head
        @data
    end

    def append(data)
        @head = Node.new(data)
    end
    
end