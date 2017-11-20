class Element
  attr_reader :datum
  attr_accessor :next

  def initialize datum
    @datum = datum
  end
end

class SimpleLinkedList
  def initialize enum=nil
    if enum
      enum.each { |e| push(Element.new(e)) }
    end
  end

  def push(elem)
    @head, elem.next = elem, @head
    self
  end

  def pop
    @head.tap { |e| @head = e.next if e }
  end

  def to_a
    head, res = @head, []
    while head
      res.push(head.datum)
      head = head.next
    end
    res
  end

  def reverse!
    # initialize(to_a)
    nxt, @head = @head, nil
    while head = nxt
      nxt = head.next
      push head
    end
    self
  end
end

module BookKeeping
  VERSION = 1
end