# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each {|element| s += element}
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
    elsif arr.length == 1
    return arr[0]
  end
  
  arr = arr.sort #need to be assigned to arr (arr.sort!)
  theMax = arr.last #same arr[-1]
  secondMax = arr[-2] #-1 returns the last element
  sum = theMax + secondMax
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  retVal = false
  if (arr.empty? || arr.length == 1)
    return retVal
  end

  for i in 0..arr.length-2#three dots exclude, two dots include
  
    for j in i+1..arr.length-1
      sum = arr.at(i) + arr.at(j)
      if sum == n
        retVal = true
        return retVal
      end
    end
  end
  return retVal
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, #{name}"
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #consonant means not-vowel chracters
  retVal = false
  if s.empty?
    return retVal
  end
  
  s = s.downcase
  #vowels = ["a", "e", "i", "o", "u"] #w and y as vowel or not?
  consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z"]
  
  for i in 0..consonant.length-1
    if s.start_with?(consonant.at(i))
      retVal = true
      return retVal
    end
  end
  
  return retVal
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  retVal = false
  
  return true if s=="0"
  
  if s.empty? || s.length< 2
    return retVal
  end
  
  for i in 0..s.length-1
    if (s[i]!= "0") && (s[i]!="1")
     # puts "here #{s[i]}"
      return false
      
    end
  end
    
  
  if s[-1]=="0" && s[-2]=="0"
    #puts "s[-1] is #{s[-1]} and s[-2] is #{s[-2]}"
    retVal = true
    return retVal
  end
  
  return retVal
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price
   def initialize(isbn, price)
     
    if (isbn.empty?) || (price<=0)
      raise ArgumentError.new("wrong prameter")
    end
     @isbn = isbn
     @price = price
  end
  
  def price_as_string
    
   # price.round(2)
    return "$#{'%.02f' % price}"
  end
    
end

#puts binary_multiple_of_4?("1010101010100")
