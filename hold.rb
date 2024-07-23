puts "Please enter a word"
sentence = gets.chomp


def substrings (sentence,dictionary)
  full_sentence = sentence.split
  character_sentence = sentence.chars
  substrings_hash = Hash.new(0)
  chracter_hold = ""

  full_sentence.each do |sentence|
    if dictionary.any?(sentence)
      substrings_hash[sentence] += 1

      character_sentence.each do |character|
        chracter_hold += character
        if chracter_hold != sentence && dictionary.any?(chracter_hold)
            substrings_hash[chracter_hold] += 1

        end
      end
    end
  end
  p substrings_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings(sentence, dictionary)