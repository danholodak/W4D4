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
