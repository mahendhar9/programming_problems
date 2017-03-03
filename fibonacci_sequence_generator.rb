# Build a method that returns an array of the Fibonacci sequence of a pre-defined number of values.

# Input
# fibonacci 10
# Expected Output
# [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

require 'rspec'

def fibonacci(num) 
	(1..num).inject([0, 1]) {|arr| arr << arr.last(2).inject(:+)}
end

# print fibonacci(10)

describe "fibonacci" do 
	it "returns an array of the fibonacci sequence given a value" do
		expect(fibonacci(10)).to eq([0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
	end
end


