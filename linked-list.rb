require_relative 'node'

class LinkedList
  attr_accessor :head
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add(value)
    if @head
    else
      @head = Node.new(value)
    end
  end

  def reverse
  end

  def print_list
    node = @head
    puts node

    while (node = node.next_node)
      puts node
    end
  end
end

list1 = LinkedList.new(12)
list2 = LinkedList.new(122, list1)
list.print_list
