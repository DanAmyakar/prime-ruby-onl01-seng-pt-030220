# Add  code here!
#def prime?(k)
#
#  n = 0
#  x = 1
#  c = *((n1)..(k))
#  while x < k
#    if c[n] / 
#    
#end
#
#prime?(12)

require 'benchmark'
require 'bigdecimal/math'
puts Benchmark.measure { BigMath.PI(10_000) }
def sieve(max)
  primes = (0..max).to_a
  primes[0] = primes[1] = nil
  counter = 0
  primes.each do |p|
    next unless p
    break if p*p > max
    counter += 1
    (p*p).step(max,p) { |m| primes[m] = nil }
  end
  puts "Solved for #{max} in #{counter} steps."
  primes.compact
end
def prime?(num)
  sieve(num).include?(num)
end
puts prime?(105557)
###################################################################################
def prime?(number)
  start = 2
  if number > 1
    range = (start..number-1).to_a
    range.none? do |num_to_test| 
      #none of the numbers should return true for none? to return true. If none of the numbers
       # return true, then they are not divisible by the number and the number is prime
      number % num_to_test == 0
    end
  else
    false
  end
end