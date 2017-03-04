#Generate all the prime numbers between two given numbers

require 'rspec'

def find_primes(num, last)
  primes = []
  while(num <= last)
    is_prime = true
    n = 2
    while(n <= num/2)
      if num%n == 0
        is_prime = false
        break
      end
      n+=1
    end

    primes << num if is_prime
    num += 1
  end
  primes
end

# print find_primes(2, 10)

describe "prime number generator" do 
  it "returns an array of all the prime numbers between two given numbers" do
    expect(find_primes(2, 10)).to eq([2, 3, 5, 7])
  end
end
