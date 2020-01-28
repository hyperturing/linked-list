require_relative 'node'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  # List mutator methods
  def prepend(value)
    if @head.nil?
      @head = Node.new(value, @tail)
    else
      @head = Node.new(value, @head)
    end
  end

  def append(value)
    @start = @head
    @start = @start.next_node until @start.next_node.nil?
    @start.next_node = Node.new(value)
  end

  def pop
    @start = @head
    # Traverse the list until reaching the second-to-last node
    @start = @start.next_node until @start.next_node.next_node.nil?
    @popped_value = @start.next_node.value
    # Remove the last node by pointing the second-to-last node to nil
    @start.next_node = nil

    @popped_value
  end

  # List accessor methods
  def head
    @head.value
  end

  def tail
    @start = @head
    @start = @start.next_node until @start.next_node.nil?
    @start.value
  end

  def at(index)
    @location = 0
    @start = @head
    until @start.nil? || @location == index
      @location += 1
      @start = @start.next_node
    end
    @start.nil? ? 'Index out of bounds' : @start.value
  end

  def contains(value)
    @start = @head
    @start = @start.next_node until @start.nil? || @start.value == value
    !@start.nil? && @start.value == value ? true : false
  end

  def find(value)
    @location = 0
    @start = @head
    until @start.nil? || @start.value == value
      @location += 1
      @start = @start.next_node
    end
    @start.nil? ? "#{value} not found in list" : @location
  end

  # List output methods
  def to_s
    string = ''
    @start = @head
    until @start.nil?
      string << " ( #{@start.value} ) ->"
      @start = @start.next_node
    end
    string + ' nil'
  end

  def size
    @size = 0
    @start = @head
    until @start.nil?
      @size += 1
      @start = @start.next_node
    end
    @size
  end
end
