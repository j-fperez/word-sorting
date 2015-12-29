def divided_by_words(sentence)
	words = sentence.split(" ")
	ordered_words = words.sort { |x,y| x.gsub(/\W+/, "") <=> y.gsub(/\W+/, "")}
	puts ordered_words
end

print "Escribe una frase: "
sentence = gets.chomp
divided_by_words sentence