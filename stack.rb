class Stack
  def initialize
    @store = Array.new
  end

  def size
    @store.size
  end

  def push(item)
    @store.push(item)
    # return self for method chaining
    self
  end
end

