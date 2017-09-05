# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do|x|
    total += x
  end
  total
end

def max_2_sum arr
  total = 0 
  if arr.sort.reverse.first(2).reduce(:+) == nil
    return 0
  else
  total += arr.sort.reverse.first(2).reduce(:+)
  total
  end
end


def sum_to_n? arr, n
  arr.each do |x|
    arr.each do |y|    #ISSUE: returns true when any two elements sum to the second argument [30 points] (FAILED - 1)
      if arr[x] == arr[y]
        #skip this iteration
      elsif (x + y) == n
        return true
      end
    end
  end
  false
end

# Part 2

def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s 
  first_letter = s[0]
  if first_letter == nil
    return false
  end
  "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".include? first_letter
end

def binary_multiple_of_4? s   #why isn't this defined?
end


# Part 3

class BookInStock

attr_accessor :isbn, :price

def initialize (book_str, price_str)
  raise ArgumentError.new("Not valid ISBN") if book_str.length == 0
  @isbn = book_str
  @price = (price_str.to_f * 100).round / 100.00
  raise ArgumentError.new("Not valid price") if price <= 0
end

def isbn= (book_str)
  @isbn = book_str
end

def price= (price_str)
  @price = (price_str.to_f * 100).round / 100.00
end

def isbn
  @isbn
end

def price
  @price
end

def price_as_string
  sprintf"$%.2f",@price
end

end