# Define a recursive function that finds the factorial of a number.
def factorial(num)
  num == 1 ? 1 : num * factorial(num - 1)
end

puts factorial(5)

# Define a recursive function that returns true if a string is a palindrome and false otherwise
def palindrome(str)
  if str.length <= 1
    true
  elsif str.slice!(0) != str.slice!(-1)
    false
  else
    palindrome(str)
  end
end
puts palindrome('level')

#  Define a recursive function that takes an argument n and prints "n bottles of beer on the wall",
#  "(n-1) bottles of beer on the wall", ..., "no more bottles of beer on the wall".
def beers_on_the_wall(bottles)
  if bottles.zero?
    puts 'no more bottles of beer on the wall'
  else
    puts "#{bottles} bottles of beer on the wall"
    beers_on_the_wall(bottles - 1)
  end
end
beers_on_the_wall(5)

# Define a recursive function that takes an argument n and returns the fibonacci value of that position.
# The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... So fib(5) should return 5 and fib(6) should return 8.
def fib(num)
  if [1, 2].include?(num)
    1
  else
    fib(num - 1) + fib(num - 2)
  end
end

puts fib(6)

# Define a recursive function that flattens an array.
# The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].
def flattens(arr)
  result = []

  arr.each do |element|
    if element.is_a?(Array)

      result += flattens(element)
    else
      result << element
    end
  end
  result
end
p flattens([[1, 2], [3, 4]])

# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.
def integer_to_roman(num, roman_mapping)
  return '' if num.zero?

  roman_mapping.each do |value, letter|
    if num >= value
      return letter + integer_to_roman(num - value, roman_mapping) # Recursive call
    end
  end
end
puts integer_to_roman(345, { 1000 => 'M',
                             900 => 'CM',
                             500 => 'D',
                             400 => 'CD',
                             100 => 'C',
                             90 => 'XC',
                             50 => 'L',
                             40 => 'XL',
                             10 => 'X',
                             9 => 'IX',
                             5 => 'V',
                             4 => 'IV',
                             1 => 'I' })

#  Use the roman_mapping hash to define a recursive method that converts a Roman numeral to an integer.
def roman_to_integer(roman, roman_mapping)
  return 0 if roman.empty?

  roman_mapping.each do |num, letter|
    if roman.start_with?(letter)
      return num + roman_to_integer(roman[letter.length..], roman_mapping)
    end
  end
end

p roman_to_integer('CCCXLV', {
                     1000 => 'M',
                     900 => 'CM',
                     500 => 'D',
                     400 => 'CD',
                     100 => 'C',
                     90 => 'XC',
                     50 => 'L',
                     40 => 'XL',
                     10 => 'X',
                     9 => 'IX',
                     5 => 'V',
                     4 => 'IV',
                     1 => 'I'
                   })
