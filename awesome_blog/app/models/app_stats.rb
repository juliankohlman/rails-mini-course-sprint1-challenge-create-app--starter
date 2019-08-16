# AppStats application statistics for the Post and Quote resources
class AppStats
	include WordCounter
	attr_reader :posts, :quotes
	def initialize
		@posts = Post.all
		@quotes = Quote.all
	end

	def posts_count
		@posts.count
	end

	def quotes_count
		@quotes.count
	end

	def posts_word_count
		@posts.map { |p| p.body.split.length }.reduce(:+)
	end

	def quotes_word_count
		@quotes.map { |q| q.body.split.length }.reduce(:+)
	end

	def total_count
		self.posts_count + self.quotes_count
	end

	# nils can't be coerced so if either of the values don't have any data yet a TypeError will get thrown
	def total_word_count
		self.posts_word_count + self.quotes_word_count
	end
end
