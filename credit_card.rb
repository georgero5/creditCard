class CreditCard
    def initialize(number)
        @number = number.delete(" ")
    end

    def get_type
        type = nil
        case @number[0]
        when '3'
            if @number.size == 15 and (@number[0..1] == '34' or @number[0..1] == '37')
                type = "AMEX"
            end
        when '4'            
            if @number.size == 13 or @number.size == 16
                type = "Visa"
            end
        when '5'
            if @number.size == 16
                unless(@number[0..1] =~ /5[1-5]/).nil?
                    type = "MasterCard"
                end
            end
        when '6'
            if @number.size == 16 and @number[0..3] == '6011'
                type = "Discover"
            end
        end

        if type.nil?
            type = "Uknown"
        end
        type
    end
    
    def numeric?
        true if Integer(@number) rescue false
    end

    def valid_number?
        doubled_numbers = {'0' => 0, '1' => 2, '2' => 4, '3' => 6, '4' => 8, '5' => 1, '6' => 3, '7' => 5, '8' => 7, '9' => 9}
        
        if not numeric?
            return false
        end

        number = @number.reverse.split(//)
        sum = 0
        number.each_with_index do |num, i|
            sum += (i % 2 == 0) ? num.to_i : doubled_numbers[num]
        end

        sum % 10 == 0
    end

    def valid?
       if get_type != "Uknown" and valid_number?
           true
       else
           false
       end
    end

    def to_s
        ("#{get_type}: #{@number}").ljust(30) + "(#{valid? ? 'valid' : 'invalid'})"
    end
end
