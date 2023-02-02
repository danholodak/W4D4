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

    def play
        #if starting0 > ending0
        until won?
            input = gets.chomp.split(" ").map {|num| num.to_i}
            # puts input
            next unless (0..2).include?(input[0]) && (0..2).include?(input[1])
            top_start = towers[input[0]][-1]
            top_end = towers[input[1]][-1]
            top_end ||= 0
            if top_start == nil || top_end < top_start 
                puts "not valid, try again"
            else
                n1,n2 = input
                move(n1, n2)
            end
            p @towers
        end

    end

    def won?
        return self.towers == [[],[],[3,2,1]]
    end

end