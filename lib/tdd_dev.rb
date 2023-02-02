#Testing devleopment of test-driven development developm

def my_uniq(arr)
    new_arr = []
    arr.each do |ele|
        new_arr << ele unless new_arr.include?(ele)
    end
    new_arr
end

class Array

    def two_sum
        array = []
        self.each_with_index do |ele, idx|
            self.each_with_index do |subele, subidx|
                array << [idx, subidx] if subidx > idx && ele + subele == 0
            end
        end
        array
    end

end


def my_transpose(rows)
    cols = []
    rows.length.times {cols << Array.new}
    rows.each do |row|
        row.each_with_index do |ele, i|
            cols[i] << ele
        end
    end
    cols

end

def stock_picker(array)
    days = nil
    profit = array[1] - array[0]
    array.each_with_index do |ele, idx|
        array.each_with_index do |ele2, idx2|
            if ele2 - ele > profit && idx2 > idx
                days = [idx, idx2]
                profit = ele2 - ele
            end
        end
    end
    return days
end

class Game

    attr_reader :towers

    def initialize
        @towers = [[3,2,1],[],[]]
    end

    def move(n1, n2)
        towers[n2].push(towers[n1].pop)
        return towers.dup
    end

end
