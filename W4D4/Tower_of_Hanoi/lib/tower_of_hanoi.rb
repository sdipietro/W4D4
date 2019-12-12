class Tower_of_hanoi

    attr_reader :stack1, :stack2, :stack3
    def initialize
        @stack1 = [1,2,3,4,5]
        @stack2 = []
        @stack3 = []
    end

    def move
        begin
            puts "Stack 1: #{@stack1}"
            puts "Stack 2: #{@stack2}"
            puts "Stack 3: #{@stack3}"
            puts "Choose a stack to remove a disc from (1, 2, or 3):"
            stack_number = gets.chomp.to_i
            if stack_number == 1
                remove_stack = @stack1
            elsif stack_number == 2
                remove_stack = @stack2
            elsif stack_number == 3
                remove_stack = @stack3
            else
                puts "Stack does not exist. Choose stack 1, 2, or 3."
                raise
            end
            
            if remove_stack.empty?
                puts "No discs on that stack. Remove from another stack."
                raise
            else
                disc = remove_stack.shift
            end
        rescue
            retry
        end

        puts "Choose a stack to add the disc to (1, 2, or 3):"
        new_stack_number = gets.chomp.to_i
        if new_stack_number == 1
            new_stack = @stack1
        elsif new_stack_number == 2
            new_stack = @stack2
        elsif new_stack_number == 3
            new_stack = @stack3
        end
        new_stack.unshift(disc)
        # puts "---------------------"
        # puts "Stack 1: #{@stack1}"
        # puts "Stack 2: #{@stack2}"
        # puts "Stack 3: #{@stack3}"
    end

    def won?
        stacks = [stack1, stack2, stack3]
        stacks.each do |ele|
            if ele == [1, 2, 3, 4, 5] && ele != stack1
                return true
            end 
        end 
        false
    end

    def run 

        until self.won?
            self.move


        end
        
        puts "Congrats. You win"
        puts "Stack 1: #{@stack1}"
        puts "Stack 2: #{@stack2}"
        puts "Stack 3: #{@stack3}"
    end




end

t = Tower_of_hanoi.new
t.run
