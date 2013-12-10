def sum(num)
  return num if
  num + sum(num-1)
end

# Given n of 1 or more, return the factorial of n, which is
# n * (n-1) * (n-2) ... 1. Compute the result recursively
# (without loops).

# factorial(1) → 1
# factorial(2) → 2
# factorial(3) → 6

# Hint: First, detect the "base case", a case so simple that
# the answer can be returned immediately (here when n==1).
# Otherwise make a recursive call of factorial(n-1)
# (towards the base case). Assume the recursive call returns
# a correct value, and fix that value up to make our result.

def factorial(num)
  return num if num == 1
  num * factorial(num - 1)
end


# We have a number of bunnies and each bunny has two big floppy
# ears. We want to compute the total number of ears across all
# the bunnies recursively (without loops or multiplication).

# bunnyEars(0) → 0
# bunnyEars(1) → 2
# bunnyEars(2) → 4

# Hint: First detect the base case (bunnies == 0), and in that
# case just return 0. Otherwise, make a recursive call to
# bunnyEars(bunnies-1). Trust that the recursive call returns
# the correct value, and fix it up by adding 2.

def bunnyEars(num)
  return num if num == 0
  bunnyEars(num - 1) + 2
end


# The fibonacci sequence is a famous bit of mathematics,
# and it happens to have a recursive definition.
# The first two values in the sequence are 0 and 1
# (essentially 2 base cases). Each subsequent value is the
# sum of the previous two values, so the whole sequence is:
# 0, 1, 1, 2, 3, 5, 8, 13, 21 and so on. Define a recursive
# fibonacci(n) method that returns the nth fibonacci number,
# with n=0 representing the start of the sequence.

# fibonacci(0) → 0
# fibonacci(1) → 1
# fibonacci(2) → 1

# Fn = Fn-1 + Fn-2

def fibonacci(num)
  return num if (0..1).include? num
  fibonacci(num-1) + fibonacci(num-2)
end


# We have bunnies standing in a line, numbered 1, 2, ...
# The odd bunnies (1, 3, ..) have the normal 2 ears.
# The even bunnies (2, 4, ..) we'll say have 3 ears,
# because they each have a raised foot.
# Recursively return the number of "ears" in the bunny line
# 1, 2, ... n (without loops or multiplication).

# bunnyEars2(0) → 0
# bunnyEars2(1) → 2
# bunnyEars2(2) → 5

def bunnyEars2(num)
  return 0 if num == 0
  num % 2 == 0 ? 3 + bunnyEars2(num-1) : 2 + bunnyEars2(num-1)
end



# We have triangle made of blocks. The topmost row has 1 block,
# the next row down has 2 blocks, the next row has 3 blocks,
# and so on. Compute recursively (no loops or multiplication)
# the total number of blocks in such a triangle with the given
# number of rows.

# triangle(0) → 0
# triangle(1) → 1
# triangle(2) → 3






# Given a non-negative int n, return the sum of its digits
# recursively (no loops). Note that mod (%) by 10 yields the
# rightmost digit (126 % 10 is 6), while divide (/) by 10
# removes the rightmost digit (126 / 10 is 12).

# sumDigits(126) → 9
# sumDigits(49) → 13
# sumDigits(12) → 3






# Given a non-negative int n, return the count of the occurrences
# of 7 as a digit, so for example 717 yields 2. (no loops). Note
# that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
# while divide (/) by 10 removes the rightmost digit
# (126 / 10 is 12).

# count7(717) → 2
# count7(7) → 1
# count7(123) → 0






