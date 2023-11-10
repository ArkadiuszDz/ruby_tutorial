# "Write a method that takes a persons's full name as input argument and returns initials"
# "example: input: John Smith -> output J.S."

# "Write a method that takes a string as input argument and returns the information about 
# how many times a letter appears in the string. Remove the whitespaces
# example: 
#   input: hello
#   output:
#     Letter h appears 1 time(s)
#     Letter e appears 1 time(s)
#     Letter l appears 2 time(s)
#     Letter o appears 1 time(s)

#     Hello -> hello
# "

def count_letters(text)
  letters = {}
  text.each_char { |letter| 
    unless letters.key?(letter)
      letters[letter] = 1
    else
      letters[letter] += 1
    end 
  }

  letters.each { |key, value|
    puts "Letter #{key} appears #{value} time(s)."
  }
end

count_letters("Hello")


my_hash = { "k" => 1 }

puts my_hash.key?("k")