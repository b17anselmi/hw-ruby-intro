def sum array
sum=0
array.inject(0) {|sum, i|  sum + i }
end

def max_2_sum array
sum(array.sort.last(2))
end

def sum_to_n? array, n
if array.empty?
    return false
else
array.permutation(2).any? { |a, b| a + b == n }
end
end

def hello name
return "Hello, "+name
end

def starts_with_consonant? s
 !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
   if s =~ /\A[01]*\z/
	 if s.to_i(2)%4 == 0
        return true unless s==""
      else
        return false
      end
	end
end

class BookInStock
   
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
    
    def price_as_string
    format("$%.2f", @price)
  end

end 

