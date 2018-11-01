class Node
  attr_accessor :data, :pointer
  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
  end

end

class Singly_linked_List
  # Creates First node in linked list and sets pointer = nil
  def initialize(data)
    @head = Node.new(data,nil)
  end

  def display
    # start at first node
    current_node = @head
    while current_node.pointer != nil
      puts "data: #{current_node.data}"
      puts "pointer: #{current_node.pointer}"
      #Move "current_node" to next node in list
      current_node = current_node.pointer
    end
    puts "Last Node:"
    puts "data: #{current_node.data}"
  end

  def insert_node_at_end(data)
    # Create New Node with inserted data
    # Set pointer to nil since it will be at the end
    new_node = Node.new(data,nil)
    # Set Current Last Node to head Initially
    current_last_node = @head

    # Check if pointer is nil (IE you are at end to the list)
    while current_last_node.pointer != nil
      # If not set current last node = to the previos nodes pointer (IE the next node in the list)
      current_last_node = current_last_node.pointer
    end
    # Set the current last nodes pointer to be the newly created node
    current_last_node.pointer = new_node
  end

  def deleteNode(data)
    # Checks if node to delete is head
    if (data == @head.data)
      # change head to be the next node in list
      @head = @head.pointer
    else
      current_node = @head
      # Iterates through list until it finds node to delete or end of list
      until  current_node.pointer == nil ||current_node.pointer.data == data
        current_node = current_node.pointer
      end
      # If have reached end of list (I.E pointing to nil) without finding node
      if current_node.pointer == nil
        puts "node not found"
      else
        # IF have found node to delete change the pointer of preceding node to next node (after the node to delte)
        current_node.pointer = current_node.pointer.pointer
      end
    end

    end


end

list = Singly_linked_List.new("Node 1")
# list.display
list.insert_node_at_end("Node 2")
list.insert_node_at_end("Node 3")
list.insert_node_at_end("Node 4")
list.insert_node_at_end("Node 5")
list.insert_node_at_end("Node 6")
# list.display
list.deleteNode("Node 4")
list.display
