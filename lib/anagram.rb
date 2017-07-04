require 'pry'

class Anagram
	attr_accessor :word, :letter_array

	def initialize(word)
		@word = word
		@letter_array = @word.split("").sort
	end


	def match(array)
		answer = []
		array.each do |word|
			given_word_arr = word.split("").sort
			if self.letter_array == given_word_arr
				answer << word

			end
		end
		answer
	end





end




# Use an attr_accessor to create a setter and getter method for the word that the
#  Anagram class instances are initialized with.
# How will you determine if one word is an anagram for another?
# You'll need to iterate over the array of words that the .match method takes as an argument. 
# You will compare each word of that array to the word that the Anagram class is initialized with.
# To determine if they are anagrams, try determining if they are composed of the same letters. 
# Remember that you can split a word into an array of letters using some_word.split(""). 
# You can compare two arrays using the ==. also, use .sort



# listen = Anagram.new("listen")
# listen.match(%w(enlists google inlets banana))

# # => ["inlets"]