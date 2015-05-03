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
  
end

