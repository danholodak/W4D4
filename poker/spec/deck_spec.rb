require "deck"

describe "Deck" do
    subject(:deck) {Deck.new}
    describe "#intialize" do
        it "creates an array and fills it with 52 unique cards" do
            expect(deck.deck.uniq.length).to be(52)
            expect(deck.deck.length).to be(52)
        end
    end
end