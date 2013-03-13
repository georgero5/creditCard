require_relative 'credit_card'

arg = ARGV.shift
if arg.nil?
    puts "Insert card number (Type 'EXIT' to exit)"
    line = gets.chomp.upcase
    while line != 'EXIT'
        cc = CreditCard.new(line)
        puts cc
        line = gets.chomp.upcase
    end
else
    File.readlines(arg).each do |line|
        cc = CreditCard.new(line.chomp)
        puts cc
    end
end
