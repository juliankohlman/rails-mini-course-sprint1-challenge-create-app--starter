# Counts total number of words in the body attribute of any file
module WordCounter
	def word_count
		count = body.split.length
		count
	end
end
