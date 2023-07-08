class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        new_node = Node.new(data)

        if @head.nil?
            @head = new_node
        else
            current_node = @head

            while current_node.next_node != nil
                current_node = current_node.next_node
            end
            
            current_node.next_node = new_node
        end

    end

    def count
        current_node = @head
        counter = 0
        while current_node != nil
            current_node = current_node.next_node
            counter += 1
        end
        counter
    end

    def to_string
        list_as_string = ""
        current_node = @head

        while current_node != nil
            list_as_string << current_node.data
            if current_node.next_node != nil
                list_as_string << " "
            end
            current_node = current_node.next_node
        end

        list_as_string
    end

end