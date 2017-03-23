## Writing a recursive method

### Write #1
`factorial(n)`
Write a method `factorial` that accepts an integer parameter n and that uses recursion to compute and return the value of n factorial (also known as n!).

- e.g. fact(4) = 4 * 3 * 2 * 1 = 24

### Write #2
`reverse(s)`
Write a method `reverse` that accepts a string as a parameter
and then returns the reverse of the string by reversing all letters and all words in the string.

- e.g. reverse("hello world") = "dlrow olleh"

### Write #3
`bunny(n)`
Write a method `bunny` that accepts an integer parameter n. N represents a
number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).

- e.g. bunny(0) = 0
- e.g. bunny(1) = 2
- e.g. bunny(10) = 20

### Write #4
`nested(s)`
Write a method `nested` that accepts a string of only parenthesis
and then returns if those parenthesis are properly nested. You may
assume that no non-paren characters will be passed to this method.

- e.g. nested("((()))") = true
- e.g. nested("())") = false


## Added Fun

### fib(n)
Write a recursive method `fib` that accepts an integer n as a parameter and returns the nth [fibonacci number](https://en.wikipedia.org/wiki/Fibonacci#Fibonacci_sequence).

- e.g. fib(4) = (1 1 2) 3 = 3

### pal(s)
Write a recursive method `pal` that accepts a string s as a parameter and returns a boolean value indicating if that string is a [palindrome](https://en.wikipedia.org/wiki/Palindrome) or not.

- e.g. pal("racecar") = true
- e.g. pal("smile") = false
