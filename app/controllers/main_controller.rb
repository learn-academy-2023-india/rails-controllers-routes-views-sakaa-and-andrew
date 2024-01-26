class MainController < ApplicationController
    def cubed
       @number = params[:number].to_i * params[:number].to_i * params[:number].to_i
    end
    def evenly
        @number1 = params[:number1].to_i
        @number2 = params[:number2].to_i
    
        if @number2 != 0 && @number1 % @number2 == 0
          @result = "#{@number1} is evenly divisible by #{@number2}."
        else
          @result = "#{@number1} is not evenly divisible by #{@number2}."
        end
      end
      def palindrome
        @input_string = params[:input_string].to_s.downcase
        @is_palindrome = @input_string == @input_string.reverse
      end
      def random
        @min_number = params[:min_number].to_i
        @max_number = params[:max_number].to_i
        @random_number = rand(@min_number..@max_number)
      end
      def madlib
        @noun = params[:noun]
        @verb = params[:verb]
        @adjective = params[:adjective]
    
        # Expand this story with more placeholders and params as needed...
        @story = "Once upon a time, a #{@adjective} #{@noun} decided to #{@verb} through the enchanted forest."
    
      end
    end
