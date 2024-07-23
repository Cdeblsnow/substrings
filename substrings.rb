puts "Please enter a word"
sentence = gets.chomp


def substrings (sentence,dictionary)
  full_sentence = sentence.split
  substrings_hash = Hash.new(0)
  

  full_sentence.each do |sentence|
    chracter_hold = ""
    character_sentence = sentence.chars

    if dictionary.include?(sentence.downcase)
       substrings_hash[sentence.downcase] += 1
    end
    
      character_sentence.each_with_index do |character,index|
        chracter_hold += character
        if chracter_hold.downcase != sentence.downcase && dictionary.include?(chracter_hold.downcase)
           substrings_hash[chracter_hold.downcase] += 1
        elsif chracter_hold.length == sentence.length
            sentence.length.times do |i|
              substring = sentence[i+1..-1]
              if dictionary.include?(substring)
                  substrings_hash[substring] += 1
              end
            end
        end

        if dictionary.include?(character.downcase)
           substrings_hash[character.downcase] += 1
        end
      end
  end
  
  p substrings_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings(sentence, dictionary)