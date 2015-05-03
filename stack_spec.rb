require_relative 'stack'

describe Stack do
  
  before do
    @stack = Stack.new
  end

  it "reports a size of zero for a new stack" do
    expect(@stack.size).to eq 0
  end

  it "reports a size of 2 after adding two items" do
    @stack.push('a')
    @stack.push('b')
    expect(@stack.size).to eq 2
  end

  it "reports a size of 1 after adding two items and removing one" do
    @stack.push('a')
    @stack.push('b')
    @stack.pop
    expect(@stack.size).to eq 1
  end

  it "returns nil when popping from an empty stack" do
    expect(@stack.pop).to eql nil
  end

  it "removes the most recently added of two items" do
    @stack.push('a')
    @stack.push('b')
    expect(@stack.pop).to eq 'b'
  end

  it "removes the newest item, after newer items have already been added and removed" do
    @stack.push('a')
    @stack.push('b')
    @stack.push('c')
    @stack.pop
    expect(@stack.pop).to eq 'b'
  end

  it "allows chaining methods" do
    result = @stack.push('a').push('b').pop
    expect(result).to eql 'b'
  end
end
