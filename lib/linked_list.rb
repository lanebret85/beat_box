class LinkedList
    attr_accessor :head

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

    def prepend(data)
        new_node = Node.new(data)

        if @head.nil?
            @head = new_node
        else
            current_head = new_node
            current_head.next_node = @head
            @head =  current_head
        end
    end

    def insert(index, data)
        new_node = Node.new(data)
        current_node = @head

        if index == 0
            @head = new_node

            new_node.next_node = current_node
            current_node = new_node

        else
            counter = 0

            until current_node.next_node.nil? || counter == (index - 1)
                current_node = current_node.next_node
                counter += 1
            end

            if current_node.next_node.nil?
                # what if I could create an empty array
                # that was appended with "next_nodes"
                # and I used that array to input the same
                # number of "next_nodes" behind @head
                # as my counter

                # current_node = current_node.next_node.next_node
                # current_node = @head.next_node.something
                new_node.next_node = current_node.next_node
                current_node.next_node = new_node
            else
                new_node.next_node = current_node.next_node
                current_node.next_node = new_node
            end
        end
    
        require 'pry';binding.pry

        # elsif index + 1 > list.count
        #     index = (list.count - 1)

        #     (index - 1).times do
        #         current_node = current_node.next_node
        #     end

        #     new_node.next_node = current_node.next_node
        #     current_node.next_node = new_node            


        # else
        #     (index - 1).times do
        #         current_node = current_node.next_node
        #     end

        #     new_node.next_node = current_node.next_node
        #     current_node.next_node = new_node
        # end
    end

    def find(index, elements)
        found = ""
        counter = 0

        current_node = @head
        while counter < index || current_node.nil?
            current_node = current_node.next_node
            counter += 1
        end

        until counter == index + elements
            found << current_node.data
            if current_node.next_node != nil
                found << " "
            end
            current_node = current_node.next_node
            counter += 1
        end
        
        found.strip
    end

    def includes?(data)
        current_node = @head
        until current_node.next_node.nil? || current_node.data == data
            current_node = current_node.next_node
        end

        if current_node.data == data
            true
        else
            false
        end
    end

    def pop
        popped = ""
        current_node = @head

        until current_node.next_node.next_node.nil?
            current_node = current_node.next_node
        end

        last_node = current_node.next_node
        popped << last_node.data
        current_node.next_node = nil
        popped
    end
end