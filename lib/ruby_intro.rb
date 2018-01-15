# Due 23/1/18

# Part 1
def sum(array)
=begin
Define a method `sum(array)` that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.  Run associated tests via:  `$ rspec spec/part1_spec.rb:5`
=end
sum=0
#double check what inject does
array.inject(0) {|sum, i|  sum + i }
end
arr = [3,4,5]
puts sum(arr)

def max_2_sum(array)
=begin
Define a method `max_2_sum(array)` which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. Run associated tests via:  `$ rspec spec/part1_spec.rb:23`
=end
#needs to be cleaned up utilizing array indexes after sorting (take last two)
#possible approaches - find max (if there is a ruby method for that) then delete it from array, then take the max again and add the two of them
array.sort! #sort the array in ascending order
max = array.max #store maximum element in array in the variable max
array.pop #pop the end element (the maximum since their sorted)
new_max = array.max #now take the new maximum
max_2_sum= max +new_max #and figure out what the sum is
puts(max_2_sum) #results
end
puts max_2_sum(arr)
#potential better approach would be sorting and taking last element, then poping it off, could reduce code by might not


#not complete (unlike commit message indicates)
def sum_to_n?(array, n)
=begin
Define a method `sum_to_n?(array, n)` that takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. `sum_to_n?([], n)` should return false for any value of n, by definition. Run associated tests via:  `$ rspec spec/part1_spec.rb:42`

You can check your progress on the all the above by running `$ rspec spec/part1_spec.rb`.

=end
#.permutation splits array into arrays of two containing all the values
(arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
#return true if the array is empty and input number ==0 or if the sums of the subsets of the array return n
end
#puts sum_to_n?(arr, 9)
# Part 2

def hello(name)
=begin
Define a method `hello(name)` that takes a string representing a name and returns the string "Hello, " concatenated with the name. Run associated tests via:  `$ rspec -e '#hello' spec/part2_spec.rb`
=end
return "Hello, "+name
end
puts hello("Marie")

def starts_with_consonant?(s)
=begin
Define a method `starts_with_consonant?(s)` that takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters!  Run associated tests via:  `$ rspec -e '#starts_with_consonant?' spec/part2_spec.rb`
=end
#convert to lowercase
s.downcase!
return false if s[0]=="a" || s[0]=="e" || s[0] == "i" || s[0] =="o" || s[0] =="u" else return false #look for more elegant approach
end
#I'm messing up the syntax here, but the general idea is right
starts_with_consonant?("Hello world")

def binary_multiple_of_4? s
=begin
Define a method `binary_multiple_of_4?(s)` that takes a string and returns true if the string represents a binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!  Run associated tests via:  `$ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb`

You can check your progress on the all the above by running `$ rspec spec/part2_spec.rb`.


=end
end

# Part 3

class BookInStock
=begin
Define a class `BookInStock` which represents a book with an ISBN
number, `isbn`, and price of the book as a floating-point number,
`price`, as attributes. Run associated tests via:  `$ rspec -e 'getters and setters' spec/part3_spec.rb`

The constructor should accept the ISBN number
(a string, since in real life ISBN numbers can begin with zero and can
include hyphens) as the first argument and price as second argument, and
should raise `ArgumentError` (one of Ruby's built-in exception types) if
the ISBN number is the empty string or if the price is less than or
equal to zero.  Include the proper getters and setters for these
attributes. Run associated tests via:  `$ rspec -e 'constructor' spec/part3_spec.rb`

Include a method `price_as_string` that returns the price of
the book formatted with a leading dollar sign and two decimal places, that is, a price
of 20 should format as "$20.00" and a price of 33.8 should format as
"$33.80". Run associated tests via:  `$ rspec -e '#price_as_string' spec/part3_spec.rb`

=end
end
#You can check your progress on the all the above by running `rspec spec/part3_spec.rb`.
#more challenges in hw-ruby-intro README.md
