\ Syntax to define a function ': <name> returned value ;'
\ Syntax to print '." something" CR'
\ FIXME-begin
: one 1 ;
: two 2 ;
\ FIXME-end
one two two one one -  + - + .
