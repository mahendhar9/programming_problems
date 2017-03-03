# Remove duplicates from an array without using 'uniq'

# Sample Input
# arr = [1, 2, 1, 3, 2]
# arr.remove_duplicates

# Output
# [1, 2, 3]

require 'rspec'

class Array
	def remove_duplicates
		self.each_with_object([]) { |n, arr| arr << n unless arr.include?(n) }
	end
end

# arr = [1, 2, 1, 3, 2]
# print arr.remove_duplicates

describe "Duplicate removal" do
	it "removes duplicates from an array" do
		arr = [1, 2, 1, 3, 2]
		expect(arr.remove_duplicates).to eq([1, 2, 3])
	end
end


# -------------------------------------------
# each_with_object
# Iterates the given block for each element with an arbitrary object given, and returns the initially given object.

# Example
# evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
#=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

# Read More
# http://stackoverflow.com/a/19064234