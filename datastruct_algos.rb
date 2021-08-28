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

# Reverse String

def reverse_string(str)
  split_str = string.split("")
  reversed = []
  str.size.times { reversed << split_str.pop }
end

# Bubble Sort

def bubble_sort(a)
  n = a.length
  
  for i in 0...n - 1
   for j in 0...n - i-1
       if a[j] > a[j+1]
           temp=a[j]
           a[j]=a[j+1]
           a[j+1]=temp
       end
   end
  end

  return a
end

# Sort Zeros to the right

def sort_zeros_right(a)
  count = 0

  for i in 0...a.length
      if a[i] != 0
          a[count] = a[i]
          count += 1
      end
  end

  while count < a.length
      a[count] = 0
      count += 1
  end

  return a
end


# Linear Search Algorithm

class Array
  def linear_search(targeted_values)
    i = 0
    while i < self.length
      if self[i] == targeted_values
        return i
      end
      i += 1
    end
    
    "Not found"
  end
end


# Search given element in sorted array

def search(a,key)
  lo=0
  hi=a.length-1

  while lo<=hi
      mid=lo+(hi-lo)/2
      if a[mid]==key
          return mid
      elsif a[mid]>=a[lo]
          if (a[mid]>key && a[lo]<=key)
              hi=mid-1
          else
              lo=mid+1
          end
      else
          if (a[mid]<key && a[hi]>=key)
              lo=mid+1
          else
              hi=mid-1
          end
      end
  end
  return -1
  
end


# Find longest word

def LongestWord(sen)
  sen.split(/\W+/).max_by(&:length)
      
end

# def LongestWord(sen)
#   sen = sen.chars.select { |char| char =~ /[\w\s]/ }.join
#   sen = sen.split(" ").max_by { |word| word.size }
#   return sen 
         
# end


# Find Factorial

def factorial(n)
  return nil if n < 0
  
  fac = 1

  while n > 0
    fac *= n
    n -= 1
  end
  
  fac
end


# Counting Sort

def counting_sort(a=[9,8,7,6],min=0,max=10)
  if min>max
    return "invalid range"
  end
  
  n=max-min+1
  count=Array.new(n,0)
  len=a.length
  output=Array.new(len)

  for i in 0...len
    count[a[i]-min]+=1
  end

  for i in 1...n
    count[i]+=count[i-1]
  end

  for i in 0...len
    output[count[a[i]-min]-1]=a[i]
    count[a[i]-min]-=1
  end

  for i in 0...len
    a[i]=output[i]
  end

  return a
end


# Inorder Traversal

def inorder_traversal(root)
  arr = []

  def traverse(node, arr)
    unless node.nil?
      traverse(node.left, arr)
      arr.push(node.val)
      traverse(node.right, arr)
    end
  end

  traverse(root, arr)
  arr
end


# Power of two

def check_power(x)
  
  if x&(x-1)==0
      print "#{x} is power of two"
  else
      print "#{x} is not power of two"
  end
end


# Postorder Traversal

def postorder_traversal(root)
  ans = []
  
  def traverse(node, ans)
    unless node.nil?
      traverse(node.left, ans)
      traverse(node.right, ans)
      ans.push(node.val)
    end
  end
  traverse(root, ans)
  ans
end


# Preorder Traversal

def preorder_traversal(root)
  result = []
  return result if root.nil?

  result << root.val
  result += preorder_traversal(root.left) if root.left
  result += preorder_traversal(root.right) if root.right

  result
end

# Selection Sort 

def selection_sort(a)
 n=a.length

 for i in 0...n 
  min=i
  for j in (i+1)...n
    if a[j]<a[min]
      temp=a[j]
      a[j]=a[min]
      a[min]=temp
    end
  end
 end

 return a
end


# Insertion Sort


def insertion_sort(a)
  for i in 1...(a.length)
      j=i
      while j>0
          if a[j-1]>a[j]
              temp=a[j]
              a[j]=a[j-1]
              a[j-1]=temp
          else
            break
          end
          j=j-1
      end
  end
  return a

end


# Binary Search

def binary_search(array, key)
  front = 0
  back = array.length - 1
  
  while front <= back
    middle = (front + back) / 2
    return middle if array[middle] == key

    if key < array[middle]
      back = middle - 1
    else
      front = middle + 1
    end
  end
  
  nil
end


# Factorial Counter

def fact(n)
  num=0
  len=Math.sqrt(n).floor
  for i in 1..len
     if n%i==0
         if n/i!=i
             num+=2
           else
               num+=1
           end
       end
   end
   
   return num
end


# FizzBuzz

def fizz()
  (1..100).each do |i|
      if(i%3==0 && i%5==0)
          print "Fizz Buzz \n"
      elsif(i%3==0)
          print "Fizz \n"
      elsif(i%5==0)
          print "Buzz \n"
      elsif
          puts i
      end
  end
end


# Max Sum 
  
def max_sum(a)
	current_max = a[0]
	max_so_far = a[0]

	for i in 1..a.size-1 do
		current_max = [a[i],current_max+a[i]].max
		max_so_far = [current_max,max_so_far].max
	end	

	return max_so_far
end	


# Quick Sort

def quick_sort(list)
  return [] if list.empty?

  groups = list.group_by { |n| n <=> list.first }

  less_than    = groups[-1] || []
  first        = groups[0]  || []
  greater_than = groups[1]  || []

  quick_sort(less_than) + first + quick_sort(greater_than)
end


# String Duplicates

def duplicates_in_str(str)
  common = {}
  ar = []

  # create an array, put occurance at index of integer representation of char
  str.each_char do |char|
    ar[char.ord] = ar[char.ord].to_i + 1
  end

  # if value is greater than 1, convert index to char
  (0..ar.length).each do |i|
    common.push(i.chr) if !ar[i].nil? && ar[i] > 1
  end
  common.to_s
end


# Stack

require_relative 'node'

# A stack is a LIFO data structure.
class Stack
  attr_reader :head

  # Check if Queue is empty.
  # Time Complexity: O(1)
  # Space Complexity: O(1)
  def empty?
    !head
  end

  # Get data in first node but don't remove the node.
  # Time Complexity: O(1)
  # Space Complexity: O(1)
  def peek
    head.data if head
  end

  # Add data to top of Stack.
  # Time Complexity: O(1)
  # Space Complexity: O(1)
  def push(data)
    @head = Node.new(data: data, next_node: head)
    self
  end

  # Remove Node on top of Stack and return the data in it.
  # Time Complexity: O(1)
  # Space Complexity: O(1)
  def pop
    if head
      data = head.data
      @head = head.next_node
    end

    data
  end

  # Return an Array with the data in all Nodes.
  # Time Complexity: O(n)
  # Space Complexity: O(n)
  def to_a
    return [] unless head
    head.to_a
  end

  private

  def initialize
    @head = nil
  end
end



# Merge Sort 

def merge(left, right)
  result = []
  left_index, right_index = 0, 0
  while (left_index < left.length && right_index < right.length)
    left_element = left[left_index]
    right_element = right[right_index]

    if left_element <= right_element
      result << left_element
      left_index += 1
    else
      result << right_element
      right_index += 1
    end
  end

  # add whatever is left from the left or right to the result
  if left
    result += left[left_index..-1]
  end
  if right
    result += right[right_index..-1]
  end

  return result
end

def merge_sort(m)
  if m.length <= 1
    return m
  end

  middle = m.length / 2
  left = m[0...middle]
  right = m[middle..-1]
  left = merge_sort(left)
  right = merge_sort(right)
  return merge(left, right)
end



# Reverse Queue

def reverse(queue)
	stack = []
  
	while !queue.empty? do
		popped_item = queue.pop # Remove item from queue
		stack.push(popped_item) # Insert removed item into stack
	end

	while !stack.empty? do
		popped_item = stack.pop # Remove item from stack
		queue.unshift(popped_item) # Insert removed item into queue
	end

	queue
end


# Duplicates in Array 

def print_duplicates(a)
  n=a.length
  
  for i in 0...n
      if a[a[i].abs]<0
        print "#{a[i].abs} "
      else
          a[a[i].abs]= -a[a[i].abs]
      end
  end

  return
end