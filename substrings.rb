def substrings(words, dictionary)
	hash = Hash.new(0)
	dictionary.each do |term|
		 count = words.downcase.scan(term).length
		 hash[term] = count if count != 0
	end
	return hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)