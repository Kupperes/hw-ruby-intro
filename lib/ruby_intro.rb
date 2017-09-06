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
  if arr.sort.reverse.first(2).reduce(:+) == nil  #see if array is empty
    return 0                                      #if empty return 0
  else
  total += arr.sort.reverse.first(2).reduce(:+)   #reverse sort and add two largest
  total
  end
end


def sum_to_n? arr, n
  arr.each do |x|
    arr.each do |y|   
      if arr[x] == arr[y]                       #skip this iteration because it is the same number
      elsif (x + y) == n                        #add two numbers and check against n
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
  first_letter = s[0]                   #initialize first letter variable
  if first_letter == nil                #check if string is empty
    return false
  end
  "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".include? first_letter  #check if consonant
end

def binary_multiple_of_4? s   
  s.each_char do |x|                     #check if valid binary
    if x != "1" && x != "0"
      return false
    end
  end
  return true if s.length == 1 && s == '0'     #test if multiple of 4
  return true if s.length > 2 && s.end_with?("00")
                                      
  return false
end

# Part 3

class BookInStock

attr_accessor :isbn, :price

def initialize (book_str, price_str)          #initialize instance and throw errors
  raise ArgumentError.new("Not valid ISBN") if book_str.length == 0
  @isbn = book_str
  @price = (price_str.to_f * 100).round / 100.00
  raise ArgumentError.new("Not valid price") if price <= 0
end

def isbn= (book_str)                          #isbn setter
  @isbn = book_str
end

def price= (price_str)                        #price setter to float
  @price = (price_str.to_f * 100).round / 100.00
end

def isbn                                      #isbn getter
  @isbn
end

def price                                     #price getter as float
  @price
end

def price_as_string                           #price getter as string
  sprintf"$%.2f",@price
end

end