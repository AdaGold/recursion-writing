## Authoring Recursive Methods

Design a recursive algorithm for each of the following. What would be the time and space complexity for each? Be sure to explain the reasoning behind the time and space complexities.

**Notes**:

- Some methods may need to call a helper recursive method with additional parameters.
- Remember that space complexity takes into account memory used by the data structures created as well as call stack memory used.

### Write #1

`factorial(n)`
Write a method `factorial` that accepts an integer parameter n and that uses recursion to compute and return the value of n factorial (also known as n!).
- e.g. fact(4) = 4 * 3 * 2 * 1 = 24

### Write #2

`reverse(s)`
Write a method `reverse` that accepts a string as a parameter and then returns the reverse of the string by reversing all letters and all words in the string.
- e.g. reverse("hello world") will return "dlrow olleh"

### Write #3

`reverse_inplace(s)`
Write a method `reverse_inplace` that accepts a string as a parameter and then reverses the string in place using a recursive algorithm.
- e.g. reverse("hello world") will convert the input string to "dlrow olleh"

### Write #4

`bunny(n)`
Write a method `bunny` that accepts an integer parameter n. N represents a number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
- e.g. bunny(0) = 0
- e.g. bunny(1) = 2
- e.g. bunny(10) = 20

### Write #5

`nested(s)`
Write a method `nested` that accepts a string of only parenthesis and then returns if those parenthesis are properly nested. You may
assume that no non-parenthesis characters will be passed to this method.
- e.g. nested("((()))") = true
- e.g. nested("())") = false

**Challenge**: Try doing this without creating new strings in the process of solving the problem.

### Write #6

`search(array, value)`
Write a method `search` that accepts an unsorted array of integers and an integer value to find and then returns true if the value if found in the unsorted array and false otherwise. Make the algorithm recursive.
- e.g. search([34, 45, 21, 4, 67], 4) should return true
- e.g. search([24, 51, 11], 4) should return false
- e.g. search([], 4) should return false

### Write #7

`is_palindrome(s)`
Write a recursive method `pal` that accepts a string s as a parameter and returns a boolean value indicating if that string is a [palindrome](https://en.wikipedia.org/wiki/Palindrome) or not.
- e.g. is_palindrome("racecar") = true
- e.g. is_palindrome("smile") = false
**Challenge**: Try doing this without creating new strings in the process of solving the problem.

### Write #8

`digit_match(n, m)`
Design and implement a recursive method that accepts two non-negative integers as parameters and that returns the number of digits that match in the two integers. Two digits match if they are equal and have the same position relative to the end of the number (i.e. starting with the ones digit). In other words, the method should compare the last digits of each number, the second-to-last digits of each number, the third-to-last digits of each number, and so forth, counting how many pairs match.
For example, for  input values of (1072503891, 62530841), the method would compare as follows:
```
1 0 7 2 5 0 3 8 9 1
    | | | | | | | |
    6 2 5 3 0 8 4 1
```
The method should return 4 in this case because 4 of these pairs match (2-2, 5-5, 8-8, and 1-1).

## Added Fun
### fib(n)
Write a recursive method `fib` that accepts an integer index n as a parameter and returns the nth [fibonacci number](https://en.wikipedia.org/wiki/Fibonacci#Fibonacci_sequence).
- e.g. fib(4) = (0 1 1 2 3) should return 3

