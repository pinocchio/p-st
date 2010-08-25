ansi protocol
= comparand 
 	"Answer whether the argument is a <Duration> representing the same 
 	period of time as the receiver."
 
 	^ self == comparand
 		ifTrue: [true]
 		ifFalse: 
 			[self class = comparand class 
 				ifTrue: [self seconds = comparand seconds]
 				ifFalse: [false] ]