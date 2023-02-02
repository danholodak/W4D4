#card spec
require "card"
describe "Card" do
    subject(:card) {Card.new(:heart, 5)}
    describe "#initialize" do
        it "assigns a suit and value to instance variabes" do
            expect(card.value).to eq(5)
            expect(card.suit).to eq(:heart)
        end
    end

    
end