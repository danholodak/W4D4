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
