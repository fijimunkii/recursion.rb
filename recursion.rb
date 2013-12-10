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





# Given a non-negative int n, compute recursively (no loops)
# the count of the occurrences of 8 as a digit, except that
# an 8 with another 8 immediately to its left counts double,
# so 8818 yields 4. Note that mod (%) by 10 yields
# the rightmost digit (126 % 10 is 6),
# while divide (/) by 10 removes the rightmost digit
# (126 / 10 is 12).

# count8(8) → 1
# count8(818) → 2
# count8(8818) → 4





# Given base and n that are both 1 or more, compute recursively
# (no loops) the value of base to the n power, so powerN(3, 2)
# is 9 (3 squared).

# powerN(3, 1) → 3
# powerN(3, 2) → 9
# powerN(3, 3) → 27






# Given a string, compute recursively (no loops) the number
# of lowercase 'x' chars in the string.

# countX("xxhixx") → 4
# countX("xhixhix") → 3
# countX("hi") → 0






# Given a string, compute recursively (no loops) the number
# of times lowercase "hi" appears in the string.

# countHi("xxhixx") → 1
# countHi("xhixhix") → 2
# countHi("hi") → 1







# Given a string, compute recursively (no loops) a new string
# where all the lowercase 'x' chars have been changed to 'y' chars.

# changeXY("codex") → "codey"
# changeXY("xxhixx") → "yyhiyy"
# changeXY("xhixhix") → "yhiyhiy"







# Given a string, compute recursively (no loops) a new string
# where all appearances of "pi" have been replaced by "3.14".

# changePi("xpix") → "x3.14x"
# changePi("pipi") → "3.143.14"
# changePi("pip") → "3.14p"






# Given a string, compute recursively a new string where all
# the 'x' chars have been removed.

# noX("xaxb") → "ab"
# noX("abc") → "abc"
# noX("xx") → ""




# Given an array of ints, compute recursively if the array
# contains a 6. We'll use the convention of considering only
# the part of the array that begins at the given index.
# In this way, a recursive call can pass index+1 to move down
# the array. The initial call will pass in index as 0.

# array6({1, 6, 4}, 0) → true
# array6({1, 4}, 0) → false
# array6({6}, 0) → true





# Given an array of ints, compute recursively the number of
# times that the value 11 appears in the array. We'll use the
# convention of considering only the part of the array that
# begins at the given index. In this way, a recursive call
# can pass index+1 to move down the array. The initial call
# will pass in index as 0.

# array11({1, 2, 11}, 0) → 1
# array11({11, 11}, 0) → 2
# array11({1, 2, 3, 4}, 0) → 0





# Given an array of ints, compute recursively if the array
# contains somewhere a value followed in the array by that
# value times 10. We'll use the convention of considering
# only the part of the array that begins at the given index.
# In this way, a recursive call can pass index+1 to move down
# the array. The initial call will pass in index as 0.

# array220({1, 2, 20}, 0) → true
# array220({3, 30}, 0) → true
# array220({3}, 0) → false




# Given a string, compute recursively a new string where all
# the adjacent chars are now separated by a "*".

# allStar("hello") → "h*e*l*l*o"
# allStar("abc") → "a*b*c"
# allStar("ab") → "a*b"





# Given a string, compute recursively a new string where
# identical chars that are adjacent in the original string
# are separated from each other by a "*".

# pairStar("hello") → "hel*lo"
# pairStar("xxyy") → "x*xy*y"
# pairStar("aaaa") → "a*a*a*a"




# Given a string, compute recursively a new string where all
# the lowercase 'x' chars have been moved to the end of the string.

# endX("xxre") → "rexx"
# endX("xxhixx") → "hixxxx"
# endX("xhixhix") → "hihixxx"






# We'll say that a "pair" in a string is two instances of a
# char separated by a char. So "AxA" the A's make a pair.
# Pair's can overlap, so "AxAxA" contains 3 pairs -- 2 for
# A and 1 for x. Recursively compute the number of pairs in
# the given string.

# countPairs("axa") → 1
# countPairs("axax") → 2
# countPairs("axbx") → 1






# Count recursively the total number of "abc" and "aba" substrings
# that appear in the given string.

# countAbc("abc") → 1
# countAbc("abcxxabc") → 2
# countAbc("abaxxaba") → 2




# Given a string, compute recursively (no loops) the number of
# "11" substrings in the string. The "11" substrings should not
# overlap.

# count11("11abc11") → 2
# count11("abc11x11x11") → 3
# count11("111") → 1




