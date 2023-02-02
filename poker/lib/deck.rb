#class deck
require 'card'

class Deck
    
    values = (1..13).to_a
    SUITS = [:heart, :club, :diamond, :spade]
    VALUES = values
    attr_reader :deck
    def initialize
        @deck = []
        suits.each do |suit|
            values.each do |value|
                @deck << Card.new(suit, value)
            end
        end
        7.times {@deck.shuffle!}
    end

    def suits
        return SUITS
    end

    def values
        return VALUES
    end

end

# d = Deck.new
# p d.suits
# p d.VALUES