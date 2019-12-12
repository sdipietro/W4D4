require "problems.rb"

# Remove dups
# Array has a uniq method that removes duplicates from an array. 
# It returns the unique elements in the order in which they first appeared:
# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; 
# it should take in an Array and return a new array.

describe Array do

    describe "my_uniq" do
        context "when array contains duplicate elements" do
            it "should return array without duplicate" do
                expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
                expect([1, 1, 1, 1, 1].my_uniq).to eq([1])
            end
        end
    end

    describe "two_sum" do
        it "should return an array of pairs of indices whos elements sum to zero" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end

        context "when one element sums to zero with multiple other element" do
            it "should return both pair of indices" do
                expect([-1, 0, 2, -2, 1, -1, 1].two_sum).to eq([[0, 4], [0, 6], [2, 3], [4, 5], [5, 6]])
            end
        end

        context "when no pair of elements sum to zero" do
            it "should return empty array" do 
                expect([1, 0, 2, 2, 1, 1, 1].two_sum).to eq([])
            end
        end
    end

    describe "my_transpose" do

        it "should swap rows and colums for a 2D array" do
            expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end

        context "when the 2D array is not a square (the length of colums doesn't equals to the length of rows)" do
            it "should raise an error" do
                expect{[[0, 1, 2, 3], [3, 4], [6, 7, 8]].my_transpose}.to raise_error
            end
        end
    end


    describe "stock_picker" do

        it "should return most profitable pair day on which to buy and sell the stock" do
            expect([5, 4, 6, 1, 10, 4, 2].stock_picker).to eq([3,4])
        end

    end

end

