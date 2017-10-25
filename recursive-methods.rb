# Note: There are different ways to author recursive methods. The following
#       is just one such approach. Your approach may look different.

# Time complexity: O(n) - n multiplications will be done
# Space complexity: O(n) - n+1 call stacks will show up in the activation chain
def factorial(n)
  if n == 0
    return 1
  end
  return n * factorial(n-1)
end

# recursive helper method for reverse.
def reverse_helper(s, reversed_str, i)
  if i < 0
    return
  end

  reversed_str << s[i]
  return reverse_helper(s, reversed_str, i-1)
end

# n is assumed to be the length of s
# Time complexity: O(n) - n characters will be added to the new string
# Space complexity: O(2n) = O(n)
#     O(n) - n call stacks will show up in the activation chain
#  +
#     O(n) - 1 character will be added to the new string in each recursive call
def reverse(s)
   if s == nil
     return nil
   else
     length = s.length
     reversed_str = ""
     reverse_helper(s, reversed_str, length-1)
     return reversed_str
   end
end

# recursive helper method for reverse_inplace
def reverse_inplace_helper(s, i, j)
  if i >= j
    return
  end
  temp = s[i]
  s[i] = s[j]
  s[j] = temp
  return reverse_inplace_helper(s, i+1, j-1)
end

# n is assumed to be the length of s
# Time complexity: O(n) - n/2 swaps will be made
# Space complexity: O(n)
#     O(n) - n call stacks will show up in the activation chain
#     O(1) - temp, i, j will take up constant space in each call stack
def reverse_inplace(s)
  if s == nil || s.length <= 1
    return
  else
    return reverse_inplace_helper(s, 0, s.length-1)
  end
end

# Time complexity: O(n) - n additions will be made
# Space complexity: O(n) - n call stacks will show up in the activation chain
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)
  end
end

# recursive helper method for nested
def nested_recursive(s, i, j)
  if i > j
    return true # base case: done checking
  elsif s[i] == '(' && s[j] == ')'
    return nested_recursive(s, i+1, j-1) # recursive case
  else
    return false # base case: mismatch of '(' and ')'
  end
end

# n is assumed to be the length of s
# Time complexity: O(n) - at most n/2 comparisons will be made
# Space complexity: O(n) - at most n/2 call stacks will show up in the activation chain
def nested(s)
  length = s.length
  # to have same number of '(' and ')', the length needs to be an even number
  if length.odd?
    return false
  elsif length == 0
    return true
  end

  return nested_recursive(s, 0, length-1)
end

# n is assumed to be the length of array
# Time complexity: O(n) - at most n elements will be searched
# Space complexity: O(n) - n call stacks will show up in the activation chain
def search(array, value, index=0)
  if index >= array.length
    return false
  end

  if array[index] == value
    return true
  end

  return search(array, value, index+1)
end

# recursive helper method for is_palindrome
def is_palindrome_helper(s, i, j)
  if i >= j
    return true
  end

  if s[i] != s[j]
    return false
  end

  return is_palindrome_helper(s, i+1, j-1)
end

# n is assumed to be the length of s
# Time complexity: O(n) - at most n/2 comparisons will be made
# Space complexity: O(n) - at most n/2 call stacks will show up in the activation chain
def is_palindrome(s)
  if s == nil
    return false
  end

  return is_palindrome_helper(s, 0, s.length-1)
end

# Time complexity: if n < m then O(lg n) where lg is log to the base 10
#                  if m < n then O(lg m) where lg is log to the base 10
# Space complexity: if n < m then O(lg n) where lg is log to the base 10
#                   if m < n then O(lg m) where lg is log to the base 10
def digit_match(n, m)
  if n < 0 || m < 0
    return 0
  end

  if n < 10 || m < 10
    # Compare the last, most significant digit of one,
    # to the next least significant digit of the the other
    if (n < 10 && n == m % 10) || (m < 10 && m == n % 10)
      return 1
    else
      return 0
    end
  end

  if n % 10 == m % 10 # if the least significant digits match
    return 1 + digit_match(n/10, m/10)
  else
    return digit_match(n/10, m/10)
  end
end

# Factorial Tests
raise "factorial broke - factorial(4)" unless factorial(4) == 24
raise "factorial broke - factorial(0)" unless factorial(0) == 1
puts "passes all factorial tests"

# Reverse Tests
raise "reverse broke - reverse('hello world')" unless reverse("hello world") == "dlrow olleh"
raise "reverse broke - reverse('a b c')" unless reverse("a b c") == "c b a"
puts "passes all reverse tests"

# Reverse In place Tests
str_1 = 'hello world'
reverse_inplace(str_1)
raise "reverse broke - reverse_inplace('hello world')" unless str_1 == "dlrow olleh"
str_2 = 'a b c'
reverse_inplace(str_2)
raise "reverse broke - reverse_inplace('a b c')" unless str_2 == "c b a"
puts "passes all reverse_inplace tests"

# Bunny Tests
raise "bunny broke - bunny(0)" unless bunny(0) == 0
raise "bunny broke - bunny(10)" unless bunny(10) == 20
puts "passes all bunny tests"

# Nested Tests
raise "nested broke - nested('((()))')" unless nested("((()))") == true
raise "nested broke - nested('())')" unless nested("())") == false
puts "passes all nested tests"

# Search Tests
arr_1 = [34, 45, 21, 4, 67]
raise "search broke - search([34, 45, 21, 4, 67], 4)" unless search(arr_1, 4) == true
arr_2 = [24, 51, 11]
raise "search broke - search([24, 51, 11], 4)" unless search(arr_2, 4) == false
arr_3 = []
raise "search broke - search([], 4)" unless search(arr_3, 4) == false
puts "passes all search tests"

# Palindrome Tests
raise "is_palindrome broke - is_palindrome('racecar')" unless is_palindrome('racecar') == true
raise "is_palindrome broke - is_palindrome('smile')" unless is_palindrome('smile') == false
puts "passes all palindrome tests"

# Digit Match Tests
raise "digit_match broke - digit_match(1072503891, 62530841)" unless digit_match(1072503891, 62530841) == 4
# raise "digit_match broke - digit_match(1234, 4321)" unless digit_match(1234, 4321) == 0
# raise "digit_match broke - digit_match(3862947593, 3862947593)" unless digit_match(3862947593, 3862947593) == 10
puts "passes all digit_match tests"
puts "All test passed"
