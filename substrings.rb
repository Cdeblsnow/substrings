puts "Please enter a word"
sentence = gets.chomp
sentence = sentence.chars

def substrings (sentence,dictionary)
  substrings_hash = Hash.new

  sentence.each do |sentence|
    substrings_hash[sentence] += 1
  end
  p substrings_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)