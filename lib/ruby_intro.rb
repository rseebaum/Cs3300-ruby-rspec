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
    len = arr.length - 1
    first = 0
    while first != len - 1
      second = first + 1
      while(second != len)
        if arr[first]+arr[second] == n
          return true
        else
          second = second + 1
        end
      end
      first = first + 1
    end
  end
end

# Part 2

def hello(name)
  hello = "Hello"
  space = ", "
  return hello + space + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  elsif s.match(/[[:alpha:]]/)
    return false
  else
    str = "AEIOUaeiou"
    str = str.chars
    len = str.length - 1
    while len != 0
     if s.start_with?(str[len])
       return false
     end
     len = len - 1
   end
   return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
