creditCard
==========
Credit cards number checker

Author: Jorge Rodriguez

Files:
	main.rb
	credit_card.rb
	creditcards.txt

Execute the main.rb file
If a file is given as an argument, it will check every card number on the file.
Ex:
$ ruby main.rb creditcards.txt
Visa: 4111111111111111        (valid)
Visa: 4111111111111           (invalid)
Visa: 4012888888881881        (valid)
AMEX: 378282246310005         (valid)
Discover: 6011111111111117    (valid)
MasterCard: 5105105105105100  (valid)
MasterCard: 5105105105105106  (invalid)
Uknown: 9111111111111111      (invalid)

If no argument is given it will ask for card numbers on the command line.
Ex:
$ ruby main.rb
Insert card number (Type 'EXIT' to exit)
4111111111111111
Visa: 4111111111111111        (valid)
