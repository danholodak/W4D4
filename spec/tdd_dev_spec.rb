require 'rspec'
require 'tdd_dev'


describe '#my_uniq()' do
    subject(:arr) {[1,2,1,3,3]}
    it 'removes duplicates from an array and returns unique elements in original order' do
        expect(my_uniq(arr)).to eq([1,2,3])
    end
end


