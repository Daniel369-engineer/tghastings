# When done, submit this entire file to the autograder.

def sum arr
  sum = 0
  arr.each { |a| sum+=a }
  return sum
end

def max_2_sum arr
 # if array is empty returning 0
if arr.length == 0
return 0
# if only one element in array
elsif arr.length == 1
return arr[0]
end
# sorting the array
arr=arr.sort
# returning the last two element sum
return arr[-1] + arr[-2]
 
end



def sum_to_n? arr, n
 # if length of array less than two
if arr.length < 2
return false
end
# looping through array
for i in 0 ... arr.size
for j in 1 ... arr.size
if i!=j
# if two number sum equal to n returning true
if arr[j] + arr[i] == n
return true
end
end
end
end
return false
end

# Part 2

def hello(name)
  "Hello, " + name
end


def starts_with_consonant? s
!!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
end
end

# Part 3

class BookInStock
attr_writer :isbn
attr_reader :isbn
attr_accessor :price

def initialize(isbn, price)
raise ArgumentError if isbn.empty? || price <= 0
@isbn = isbn
@price = Float(price)
end

def price_as_string
format("$%.2f", @price)
end

end
book = BookInStock.new("isbn1", 33.80)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price_as_string}"
book.price = book.price * 0.75
puts "New price = #{book.price_as_string}"
