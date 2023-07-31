# frozen_string_literal: true

line = '-' * 15
##############################################
puts "#{line}Print#{line}"

say = 'I love ruby'

p say
print say
print "#{say}\n"
puts say.upcase

def sayMsg(txt)
  puts txt.upcase
end

sayMsg 'hello world' # or sayMsg("hello world")

##############################################
puts "#{line}String#{line}"

first_name = 'Raphael'
last_name = 'Molinaro'

# string concatenation
puts "#{first_name} #{last_name}"

# string interpolation only works with double quotes
puts "My first name is #{first_name} and my last name is #{last_name}"

# methods
puts first_name.length, first_name, first_name.reverse, first_name.empty?
puts first_name[2], first_name.sub('ph', 'PH'), first_name.slice(0, 4)

# reference variable
first_var = 'Mashed'
second_var = first_var
first_var = 'Potatoes'
puts first_var, second_var

##############################################
puts "#{line}Numbers#{line}"

# to_i (int), to_f (float)
p 10 + 2, 10 * 2, 10 / 4, 10.0 / 4, 10.to_f / 4, 10 % 4
puts '5' * 2 # repeat twice
puts rand, rand(10)

##############################################
puts "#{line}Arrays#{line}"

arr1 = [1, 2, 3, 4]
p arr1, arr1[0], arr1.last

range2 = 1..3
arr2 = range2.to_a
print 'array 2 ', arr2

puts ' using ! to make mutable'
print arr2
print arr2.reverse
print arr2
print arr2.reverse!
print arr2
puts

range3 = 'a'..'e'
arr3 = range3.to_a
print arr3, 'array size ', arr3.length, "\n"
arr3Added = arr3.append('extra')
print arr3Added, "\n"
puts arr3Added.include?('c')
puts arr3Added.join
arr4 = []
puts arr4.empty?

puts

## literals
# %w() array of strings
# %r() regular expression.
# %q() string
# %x() a shell command (returning the output string)
# %i() array of symbols (Ruby >= 2.0.0)
# %s() symbol
# %() (without letter) shortcut for %Q()

arr5 = %w[my name is Raph]
p arr5

#####################################
puts "#{line}Loops#{line}"

arr5.each do |i|
  print "#{i}-"
end
puts

arr5.each do |food|
  print food
end
puts

arr5.each { |food| print food.upcase }
puts

arrSelected5 = arr5.select { |name| name === 'Raph' }
print arrSelected5
puts

##############################################
puts "#{line}Hashes (dictionary)#{line}"

hash1 = { 'a' => 1, 'b' => 2, 'name' => 'Mash' }
puts hash1['a']

hash2 = { a: 10, b: 20, age: 80, 'name': 'Raph' }
puts hash2
puts hash2[:a]
hash2[:color] = 'green'
print hash2.keys, "\n"

hash2.each do |key, value|
  puts "Key is #{key}, type is #{key.class}. Value is #{value}, type is #{value.class}"
end

hashSelected1 = hash2.select { |_key, value| value.class === 'String' }
print hashSelected1
puts

hashSelected2 = hash2.select { |_key, value| value.is_a?(Integer) }
print hashSelected2
puts

##############################################
puts "#{line}Input by user#{line}"

p 'what is name?'
typedName = gets.chomp
puts "thanks, #{typedName}"

p 'what is number?'
typedNumber = gets.chomp
typedConvertedNumber = typedNumber.to_i
puts "number is #{typedConvertedNumber * 2}"
