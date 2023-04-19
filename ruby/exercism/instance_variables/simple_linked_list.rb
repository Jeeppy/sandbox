class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(value)
    @datum = value
  end
end

class SimpleLinkedList
  def initialize(array = nil)
    if array.nil?
      @head = nil
    else
      array.each do |value|
        element = Element.new(value)
        push(element)
      end
    end
  end

  def is_empty?
    if @head.nil?
      true
    else
      false
    end
  end

  def push(element)
    @head = element
    element.next = @head unless is_empty?

    self
  end

  def pop
    return if is_empty?

    popped = @head
    @head = @head.next

    popped
  end

  def to_a
    array = []

    current = @head
    until current.nil?
      array.append(current.datum)
      current = current.next
    end

    array
  end

  def reverse!
    return self unless @head

    current = @head

    previous = nil
    until current.next.nil?
      next_element = current.next
      current.next = previous
      previous = current
      current = next_element
    end
    current.next = previous
    @head = current

    self
  end
end
