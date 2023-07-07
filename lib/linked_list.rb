class LinkedList
    attr_reader :head

    def initialize
        @head = nil
        @current_node = nil
    end

    def append(data)
        new_node = Node.new(data)

        if @head.nil?
            @head = new_node
        else
            #might need loop here (*until* sort of thing)
            @current_node = @head
        end
    end

    def count
        counter = 0
        while @current_node.next_node != nil
            counter += 1
        end 
    end
    
end