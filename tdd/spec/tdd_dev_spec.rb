require 'rspec'
require 'tdd_dev'


describe '#my_uniq()' do
    subject(:arr) {[1,2,1,3,3]}
    it 'removes duplicates from an array and returns unique elements in original order' do
        expect(my_uniq(arr)).to eq([1,2,3])
    end
end

describe 'Array#two_sum' do
    subject(:arr) {[-1,0,2,-2,1]}
    it 'should return pairs of indices where elements in the array sum to zero' do
        expect(arr.two_sum).to eq([[0,4],[2,3]])
    end
end

describe '#my_transpose()' do
    subject(:arr2d) {[[0,1,2],[3,4,5],[6,7,8]]}
    it 'should transpose the array so that rows become columns, and columns become rows' do
        expect(my_transpose(arr2d)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end

end

describe '#stock_picker()' do
    let(:prices) {[100,12,1,15,33,5,5,2,10]}
    context 'buy low sell high' do
        it 'should return the pair of days where buying on day 1 and selling on day 2 will yeild highest return' do
            expect(stock_picker(prices)).to eq([2,4])
        end
    end
end

describe 'Game' do
    subject(:hanoi) {Game.new}
    describe '#initialize' do
        it 'should create a new set of towers, with the first tower occupied by blocks of descending size, and the other two towers empty' do
            expect(hanoi.towers).to eq([[3,2,1],[],[]])
        end
    end

    describe '#move()' do
    # before(:each) {hanoi = Game.new}
        it "should take the top element from starting position, and add it to ending position. EZ" do
            expect(hanoi.move(0, 2)).to eq([[3,2],[],[1]])
            expect(hanoi.move(0, 1)).to eq([[3],[2],[1]])
        end
    end

    describe 'won?' do
    
        it 'should return true if the third tower has all 3 discs stacked smallest on top of largest' do
            allow(hanoi).to receive(:towers).and_return([[],[],[3,2,1]])
            expect(hanoi.won?).to be true
        end

        it 'should return false if otherwise' do
            expect(hanoi.won?).to be false
        end

    
    end

    

end


#class Game
#2d array for towers
#def init
#getters setters
#arr[0] has 3 items
#arr[1] and arr [] empty
#arrs are stacks, push and pop
#play loop (until won, move)
#move needs beginning and end pos, prevents big discs placed on smaller discs
#gets input- method gets input and passes to #move
#won? returns false unless arr [0] and [1] empty, arr[2].length == 3