# Project Euler #3
# Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(n)
  divisor = 2
  while(divisor <= n)
    n%divisor == 0 ? n = n/divisor : divisor += 1
  end
  divisor
end

start_time = Time.now
puts largest_prime_factor(600851475143) 
puts "Time elapsed: #{(Time.now - start_time)}"

#---------------------------------------------------
# Hint: Once you've found a prime factor, you can divide by it. This greatly reduces the range of remaining potential divisors you have to check.

# Using your first example:

# 13195/5 = 2639,
# 2639/7  = 377,
# 377/13  = 29,
# 29/29   = 1, done.
# This way, we only had to check up to 29 instead of all the way to 13195.

# Reference http://stackoverflow.com/a/16474470