class Quote < ApplicationRecord
	include WordCounter
	include Publishable
end
