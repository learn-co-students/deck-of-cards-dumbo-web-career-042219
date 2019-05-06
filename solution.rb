class Deck
  attr_reader :cards
  def initialize
    @cards = [] 
    create_deck
  end

  def create_deck
    Card.suits.each do |suit|
      Card.ranks.each do |rank|
        self.cards << Card.new(suit,rank)
      end
    end
  end

  def choose_card
    random_card = rand(@cards.count)
    @cards.delete_at(random_card)
  end
end

class Card
  @@suits = [:hearts, :spades, :diamonds, :clubs]
  @@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def self.ranks
    @@ranks
  end

  def self.suits
    @@suits
  end

end
