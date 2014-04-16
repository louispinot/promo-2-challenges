class CardDeck

  def initialize(number_of_cards = 52)
    @size = number_of_cards
    def_deck
  end

  def def_deck
     if @size == 52
      diamonds = (1..13).to_a
      hearts = (1..13).to_a
      spades = (1..13).to_a
      clubs = (1..13).to_a
    elsif @size == 32
      diamonds = (1..13).to_a.delete_if {|i| (i != 1 && i < 7)}
      hearts = (1..13).to_a.delete_if {|i| (i != 1 && i < 7)}
      spades = (1..13).to_a.delete_if {|i| (i != 1 && i < 7)}
      clubs = (1..13).to_a.delete_if {|i| (i != 1 && i < 7)}
    end
    @cards = [diamonds, hearts, spades, clubs]
  end

  def shuffle_deck
    @deck = @cards.flatten.shuffle
  end

end

poker_deck = CardDeck.new(32)
poker_deck.shuffle_deck