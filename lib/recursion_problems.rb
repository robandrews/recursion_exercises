#Problem 1: You have array of integers. Write a recursive solution to find
#the sum of the integers.

def sum_recur(array)
  return 0 if array.length == 0
  return array.first if array.length == 1
  array.last + sum_recur(array[0..-2])
end


#Problem 2: You have array of integers. Write a recursive solution to
#determine whether or not the array contains a specific value.

def includes?(array, target)
  return true if array.last == target
  return false if array.length == 1 && array.first != target
  includes?(array[0..-2], target) if array.length > 1
end


#Problem 3: You have an unsorted array of integers. Write a recursive
#solution to count the number of occurrences of a specific value.

def num_occur(array, target)
  temp = array.dup
  num = temp.pop
  return 0 if array.count == 0
  (num == target ? 1 : 0) + num_occur(temp, target)
end


#Problem 4: You have array of integers. Write a recursive solution to
#determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  temp = array.dup
  p temp
  return true if (temp[-1] + temp[-2]) == 12
  return false if temp.count == 2
  temp.pop
  add_to_twelve?(temp)
end


#Problem 5: You have array of integers. Write a recursive solution to
#determine if the array is sorted.

def sorted?(array)
  temp = array.dup
  return true if array[-2] <= array[-1] && array.count == 2
  temp.pop
  temp[-2] <= temp[-1] && sorted?(temp)
end


#Problem 6: Write the code to give the value of a number after it is
#reversed. Must use recursion. (Don't use any #reverse methods!)

#Not finished...used strings blah.
def reverse(number)
  nums = number.to_s.split('').map{|el| el.to_i}
  
  temp = [nums.pop]
  temp << reverse(temp.)
end

a = [1,2,3,4,6,6,7,8]
b = [2,3,1,4,5,2,4,5]

