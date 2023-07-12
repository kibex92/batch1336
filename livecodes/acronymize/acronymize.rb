# split string into array of words
# find first letter of each word
# append each upcased first letter to a string
# return string
# WITH STRING CONCAT
# def acronymize(sentence)
#   words = sentence.split(" ")
#   first_letters = ""
#   words.each do |word|
#     first_letters += word.chr
#   end
#   return first_letters.upcase
# end

# WITH ARRAY JOIN
def acronymize(sentence)
  return "Wrong input" if sentence.class != String

  words = sentence.split(" ")
  first_letters = []
    words.each do |word|
    first_letters << word[0]
  end
  first_letters.join("").upcase
end

puts acronymize("") == ""
puts acronymize(true) 
puts acronymize("Thank God it's friday") == "TGIF"
puts acronymize("I DON'T KNOW") == "IDK"
