require_relative 'stack'

describe Stack do
  
  before do
    @stack = Stack.new
  end

  it "reports a size of zero for a new stack" do
    expect(@stack.size).to eq 0
  end
  
end

