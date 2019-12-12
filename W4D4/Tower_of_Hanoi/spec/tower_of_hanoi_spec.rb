require "tower_of_hanoi.rb"

describe Tower_of_hanoi do

    describe "#initialize" do
        subject(:tower) {Tower_of_hanoi.new}

        it "should attribute stack1 ([1,2,3,4,5]), stack2 ([]), stack3 ([])" do
            expect(tower.stack1).to eq([1,2,3,4,5])
            expect(tower.stack2).to eq([])
            expect(tower.stack3).to eq([])
        end
    end

end