require_relative 'node'

module LinkedList


  class Stack
    def initialize
      @first = nil
    end

    def push(value)
      @first = Node.new(value, @first)
    end
    alias_method :"<<", :push

    def pop
      raise "Stack is empty" if is_empty?
      value = @first.value
      @first = @first.next_node
      value
    end

    def is_empty?
      @first.nil?
    end
  end
end
