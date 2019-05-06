require 'pry'

class Deck
  attr_accessor :cards
  @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

def initialize
  @cards = []
  @@rank.each do |rank|
    @@suit.each do |suit|
      @cards << Card.new(suit, rank)
    end
  end
end

def choose_card
  card = self.cards.delete_at(rand(0..self.cards.length))
end
end

class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
