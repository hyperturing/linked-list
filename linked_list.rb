# frozen_string_literal: false

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
    # Traverse the list until the next node would be nil
    @start = @head
    @start = @start.next_node until @start.next_node.nil?
    @start.next_node = Node.new(value, @tail)
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

  # Advanced list mutator methods
  def insert_at(value, index)
    # First, traverse the list to the given index
    @location = 0
    @start = @head
    until @start.nil? || @location == index - 1
      @location += 1
      @start = @start.next_node
    end

    # Unless the index is out of the list, insert a new node with the given value
    if @start.nil?
      'Index out of bounds'
    else
      @new_node = Node.new(value, @start.next_node)
      @start.next_node = @new_node
    end
  end

  def remove_at(index)
    # First, traverse the list to the given index
    @location = 0
    @start = @head
    until @start.nil? || @location == index - 1
      @location += 1
      @start = @start.next_node
    end

    # Unless the index is out of the list, remove the node there
    if @start.nil?
      'Index out of bounds'
    else
      @new_next = @start.next_node.next_node
      @start.next_node.next_node = nil
      @start.next_node = @new_next
    end
  end

  # List accessor methods
  def head
    @head.value
  end

  def tail
    # Traverse the list until the next node would be nil
    @start = @head
    @start = @start.next_node until @start.next_node.nil?
    @start.value
  end

  def at(index)
    # Traverse the list, incrementing our counter until it equals the index value
    @location = 0
    @start = @head
    until @start.nil? || @location == index
      @location += 1
      @start = @start.next_node
    end
    @start.nil? ? 'Index out of bounds' : @start.value
  end

  def contains(value)
    # Traverse the list until we reach the end or find the value
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
    # Traverse our list, appending node values to an accumulator string 
    #   until we reach the end
    string = ''
    @start = @head
    until @start.nil?
      string << " ( #{@start.value} ) ->"
      @start = @start.next_node
    end
    string + ' nil'
  end

  def size
    # Traverse our list, counting nodes as we traverse them
    @size = 0
    @start = @head
    until @start.nil?
      @size += 1
      @start = @start.next_node
    end
    @size
  end
end
