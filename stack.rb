require_relative 'node'

class Stack
  attr_accessor :head
  
  def initialize
    @head = nil
  end

  def push(data)
    @head = Node.new(data, @head)
  end

  def pop
    if empty?
      puts "Stack is empty"
      nil
    else
      popped_data = @head.data
      @head = @head.next_node
      popped_data
    end
  end

  def peek
    if empty?
      puts "Stack is empty"
      nil
    else
      @head
    end
  end
  
  private

  def empty?
    if @head == nil
      true
    else
      false
    end
  end
end
=begin
linked_list = Stack.new
puts linked_list.inspect

linked_list.push(1)
puts linked_list.inspect

linked_list.pop
puts linked_list.inspect
linked_list.pop
puts linked_list.inspect

linked_list.peek
puts linked_list.inspect

linked_list.push(2)
puts linked_list.inspect

puts linked_list.peek
puts linked_list.inspect
=end
# iterative solution
# time - o(n)
# space - o(1)

# recursive solution (implicit stack)
# time - o(n)
# space - o(n)


