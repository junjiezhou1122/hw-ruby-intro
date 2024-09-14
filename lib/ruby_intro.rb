# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  # in ruby, it implict return the last expresstion to be evalued
  "Hello, #{name}"

end

def starts_with_consonant? s
  !!(s =~ /^[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4? s
  # Check if the string is a valid binary number and not empty
  return false unless s.match?(/^[01]+$/)
  
  # Convert to integer and check if it's a multiple of 4
  s.to_i(2) % 4 == 0

end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must be greater than zero" if price <= 0

    @isbn = isbn
    @price = price.to_f
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
