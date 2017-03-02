#Implement an ATM method that properly dispenses the correct denominations to a user.

# Exercise Description
# Build out a method that takes two arguments: the total amount of money requested and the denominations that can be returned. And return the count of how many bills of each denomination should be returned to a user.

# Example Data Input
# 245, [20, 10, 5]
# In this example, 245 is the total amount requested at the ATM, and the array represents 20, 10, and 5 dollar bills.

# Expected Output
# {20=>12, 10=>0, 5=>1}
# This hash represents 12 $20 dollar bills and 1 $5 dollar bills.

require 'rspec'

def atm(total, denominations)
	denominations.inject({}) do |hsh, denomination|
		hsh[denomination] = total.divmod(denomination).first
		total = total.divmod(denomination).last
		hsh
	end
end

# print atm 110, [100, 20, 10, 5]

describe 'ATM' do
	it 'dispenses the correct denominations to users' do
		expect(atm 110, [100, 20, 10, 5]). to eq({100=>1, 20=>0, 10=>1, 5=>0})
		expect(atm 245, [20, 10, 5]). to eq({20=>12, 10=>0, 5=>1})
	end
end


#From Rubinius documentation
#https://github.com/rubinius/rubinius/blob/f9c2dffa4c894eea88abe1e476688df549a2bc4b/core/numeric.rb
#Slightly rewritten

# def divmod(divisor)
# 	raise ZeroDivisionError, "divided by 0" if divisor == 0
# 	[(self/divisor).floor, self%divisor] #[quotient, remainder]
# end

#Example
#10.divmod(3)
# Output
#[3, 1]