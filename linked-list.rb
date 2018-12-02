require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(data, current=@head)
    if current.next
      insert(data, current.next)
    else
      current.next = Node.new(data)
    end
  end
  
  def find(data, current=@head)
    if current.data == data
      current
    else
      find(data, current.next) if current.next
    end
  end

  def update(find_data, update_data, current=@head)
    node = find(find_data)
    if node
      node.data = update_data
    end
  end

  def destroy(data)
    node = find(data)
    parent = find_parent(data)
    if node
      parent = find_parent(data)
      if parent
        parent.next = node.next
      else
        @head = node.next
      end
    end
  end

  def reverse_list

  end

  def print(current=@head)
    puts current.data
    print(current.next) if current.next
  end

  private 

  def find_parent(data, current=@head)
    if current.next && current.next.data == data
      current
    else
      find_parent(data, current.next) if current.next
    end
  end
end

ll = LinkedList.new("first node")
ll.insert("second node")
ll.insert("third node")
ll.update("third node", "new third node")
ll.print
