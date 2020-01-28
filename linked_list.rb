require_relative 'node'

class LinkedList
  attr_accessor :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value, @tail)
    else
      @head = Node.new(value, @head)
    end
  end

  def to_s
    string = ''
    @start = @head
    until @start.nil? do
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
    @start.nil? ? -1 : @start.value
  end
end
