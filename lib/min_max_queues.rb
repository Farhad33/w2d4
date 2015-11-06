class MyQueue
  def initialize
    @store = []

  end

  def enqueue(element)
    @store.push(element)
  end

  def dequeue(element)
    @store.shift(element)
  end

  def peek
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store == []
  end
end

class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(element)
    @store.push(element)
  end

  def peek
    @store[0]
  end

  def empty?
    @store == []
  end
end
