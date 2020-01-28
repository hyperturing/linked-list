require_relative 'node'

class LinkedList
  attr_accessor :head, :tail
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
end
