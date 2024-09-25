def substrings(string, dictionnary)
  dictionnary_occurences = Hash.new(0)

  dictionnary.each do |word|
    dictionnary_occurences[word] += string.downcase.scan(word.downcase).length unless string.downcase.scan(word.downcase).length == 0
  end

  dictionnary_occurences
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary) == { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }