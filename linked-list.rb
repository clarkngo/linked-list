require_relative 'node'

class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
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

list = LinkedList.new
list.add(20)
list.print_list
