
require 'pry'

class Deck

attr_accessor :cards, :rank, :suit
@@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
@@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

	def initialize
	@cards = []
	r = 0
	s = 0
		4.times do 
			13.times do |r, s|	
			Card.new(@rank[r], @suit[s])
			r += 1
			@cards << self
			end
		s += 1
		end
end
end


class Card
rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

attr_reader :rank, :suit

	def initialize(suit, rank)
	@suit = suit
	@rank = rank
	# @@cards << self
	end



end
