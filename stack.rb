require_relative 'linked_list'

class Stack
  attr_accessor :list
  
  def initialize
    @list = LinkedList.new
  end

  def push(data)
    @list.add(data)
  end

  def pop
    @list.shift if empty?
  end

  def empty?
    @head = nil
  end
end

linkedlist = Stack.new
linkedlist.push(3)
linkedlist.pop
linkedlist.pop
puts linkedlist.inspect
