# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  else
    sumNum = 0
    arr.each { |a| sumNum += a}
    return sumNum;
  end
  return 0;
end

def max_2_sum arr
  if arr.length == 0 #returns zero when empty
    return 0 
  elsif arr.length == 1 #returns single value
    return arr[0]
  else
    arr=arr.sort ##sorts smallest to biggest
    return arr[-1] + arr[-2] #returns sum of last two elements in array
  end
  return 0
end

def sum_to_n? arr, n
  if arr.length == 0 #returns zero when empty
    return false
  elsif arr.length == 1 #returns zero when single element
    return false
  else
    len = arr.length - 1 #zero-based index, so we go until length-1
    first = 0
    while (first != len - 1) # iterates until first gets to second to last value
      second = first + 1 #value will be the next element from first
      while(second != len) #second will get to very last value
        if arr[first]+arr[second] == n #returns true if sum equals n
          return true
        else
          second = second + 1 #otherwise second and first get incremented
        end
      end
      first = first + 1
    end
  end
  return false #returns false otherwise
end

# Part 2

def hello(name)
  hello = "Hello"
  space = ", "
  return hello + space + name
end

def starts_with_consonant? s
  if s.empty? #returns false if empty
    return false
  elsif !s.start_with?(/[[:alpha:]]/) #returns false if it doesn't start with a letter
    return false
  else
    str = "AEIOUaeiou" #string of vowels
    str = str.chars
    len = str.length - 1
    while len != 0 #while loop to check if string starts with any letter in the str string
     if s.start_with?(str[len])
       return false #returns false if it finds a match
     end
     len = len - 1 #otherwise iterates and checks next letter in string
   end
   return true #returns true if it passes through the entire string
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price #creating attributes
  def initialize (isbn, price)
    raise ArgumentError if price <= 0 || isbn.empty? #checking if price is negative or isbn is empty
    @isbn, @price = isbn, price #initializing attributes
  end

  def price_as_string
    format("$%.2f", @price) #formats the string as a float to 2 decimal places
  end
end
