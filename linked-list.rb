require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(data)
    @next_node = @head
    @head = Node.new(data, @head)
  end

  def find(data, current = @head)
    if current.data == data
      puts current
    else
      find(data, current.next_node)
    end
  end


  def print_linked_list
    puts @head.inspect
  end

  def print_others
    puts @next_node.inspect
    puts @current.inspect
  end
end

linked_list = LinkedList.new
linked_list.insert(1)
linked_list.insert(2)
linked_list.insert(3)
puts "find"
linked_list.find(2)

linked_list.print_linked_list
linked_list.print_others


