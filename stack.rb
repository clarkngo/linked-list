require_relative 'linked-list'

class Stack
  attr_accessor :list
  
  def initialize
    @list = LinkedList.new
  end

  def push(data)
    @list.add(data)
  end

  def pop
    @list.shift
  end

  def empty?
  end
end

linkedlist = Stack.new
linkedlist.push(3)
linkedlist.pop
puts linkedlist.inspect
