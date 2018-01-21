def sum(array)
sum=0
array.inject(0) {|sum, i|  sum + i }
end

def max_2_sum(array)
array.sort! #sort the array in ascending order
max = array[-1]+array[-2]#the last two array values will be the two largest elements
end

def sum_to_n?(array, n)

(array.empty? && n.zero?) || array.permutation(2).any? { |a, b| a + b == n }
end

def hello(name)
return "Hello, "+name
end

def starts_with_consonant?(s)
s.downcase!
return !(s[0]=="a" || s[0]=="e" || s[0] == "i" || s[0] =="o" || s[0] =="u")
end

def binary_multiple_of_4?(s)
   if s =~ /\A[01]*\z/
	 if s.to_i(2)%4 == 0
        return true
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

