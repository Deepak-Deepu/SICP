(car ''abracadabra)

the interpreter prints back quote.

Remember that ' is just shorthand for quote, so the expression above is equivalent to

(car (quote (quote abracadabra)))

The sub-expression (quote (quote abracadabra)) is equivalent to '(quote abracadabra),
which is just the list containing the two symbols quote and abracadabra, 
making the car of that list simply the symbol quote.
