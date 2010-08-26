ansi protocol
/ operand
 	"operand is a Duration or a Number"
 
 	^ operand isNumber
 		ifTrue: [ self class seconds: (self asSeconds / operand) asInteger ]
 		ifFalse: [ self asSeconds / operand asDuration asSeconds ]