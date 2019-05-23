# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
  if n < 0
    raise ArgumentError, "Can only accept numbers >= 0"
  end
  return 1 if n == 0

  return n * factorial(n-1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
  return s if s.length == 0

  return "#{s[-1]}#{reverse(s[0...s.length-1])}"
end

def reverse_in_place_helper(s, i, j)
  return s if i >= j

  temp = s[i]
  s[i] = s[j]
  s[j] = temp

  return reverse_in_place_helper(s, i+1, j-1)
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  return reverse_in_place_helper(s, 0, s.length - 1)
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  return 0 if n == 0

  return 2 + bunny(n-1)
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

