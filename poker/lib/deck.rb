#class deck

class Deck
    
    values = (1..13).to_a
    SUITS = [:heart, :club, :diamond, :spade]
    VALUES = values
    def initialize

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