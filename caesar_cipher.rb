def caesar_cipher(string, shift)
	ciphered_string = ""
	string.each_byte do |char|
		case char
		when 65..90
			char += shift
			if char > 90
				char -= 26
			end
		when 97..122
			char +=shift
			if char > 122
				char -= 26
			end
		end
		ciphered_string += char.chr
	end
	puts ciphered_string
end

caesar_cipher("What a string!", 5)