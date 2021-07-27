# Fizzbuzz

def fizzbuzz(n)
     (1..n).map do |num|
         if num % 3 == 0 && num % 5 == 0
               "FizzBuzz"
         elsif num % 3 == 0
               "Fizz"
         elsif num % 5 == 0
               "Buzz"
         else
              num
        end
    end
end

# Anagrams

def anagrams(a, b) 
  a_hash = string_to_char_hash(a)
  b_hash = string_to_char_hash(b)
  a_hash == b_hash
end

def string_to_char_hash(str)
  str_hash = {}
  str.chars.each do |c|
    if str_hash.include?(c)
      str_hash[c] += 1
    else
      str_hash[c] = 1
    end
  end
  str_hash
end

# Given 2 sentences as strings, s1 and s2, where s2 contains one more word than the first, return the added word.

def word_added(s1, s2)
  arr1 = s1.split(' ')
  arr2 = s2.split(' ')
  h1 = arr_to_hash(arr1)
  h2 = arr_to_hash(arr2)
 
  return (h2.to_a - h1.to_a).to_h.keys[0]
end

def arr_to_hash(arr)
  h = {}

  arr.each do |x|
    if h.include?(x)
      h[x] += 1
    else
      h[x] = 1
    end
  end

  h
end

# Binary Search Algorithm

def binary_search (arr,key)
    low = 0
    high = arr.length-1
    
    while(low <= high)
        mid = low + ((high-low)/2)
        
        if arr[mid] == key
            return mid
        elsif arr[mid] < key
            low = mid + 1
        else
            high = mid - 1
        end
    end
    
    return "Value not found in array!"
end 

# Fibonacci

def fib(n)
  first_num, second_num = [0, 1]
  (n - 1).times do
    first_num, second_num = second_num, first_num + second_num
    
    # first_num = second_num
    # second_num = first_num + second_num
  end
  puts first_num
end