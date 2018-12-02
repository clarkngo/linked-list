require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(value)
    # implement your code here
    puts value
  end

  def add(value)
    @current = @head
    @head = Node.new(value, @current)
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
linked_list.add(1)
linked_list.add(2)
linked_list.add(3)

linked_list.print_linked_list
linked_list.print_others


