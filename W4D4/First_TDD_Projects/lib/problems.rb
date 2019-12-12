require "byebug"
class Array

    def my_uniq
        new_array = []
        self.each do |ele|
            unless new_array.include?(ele)
                new_array << ele
            end
        end
        new_array
    end

    def two_sum
        new_arr = []
        self.each_with_index do |ele, i|
            self.each_with_index do |ele2, i2|
                if ele + ele2 == 0 && i2 > i
                    new_arr << [i, i2]
                end
            end
        end
        new_arr
    end

    def my_transpose
        new_arr = Array.new(self.length) {[]}
        self.each do |sub_arr|
            sub_arr.each_with_index do |col, i2|
                new_arr[i2] << col
            end
        end
        new_arr
    end

    def stock_picker
        #[5, 4, 6, 1, 10, 4, 2]
        solution = [0,1]
        most_profitable = self[1] - self[0]

        self.each_with_index do |price, day|
            self.each_with_index do |price2, day2|
                #debugger
                if day2 > day && ((price2 - price) > most_profitable)
                    most_profitable = price2 - price                 
                    solution = [day, day2]
                end
            end
        end
        solution
    end

end





#p [5, 4, 6, 1, 10, 4, 2].stock_picker