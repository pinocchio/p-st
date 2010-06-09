bit manipulation
fib
	^ self < 2 ifTrue: [ 1 ]
		ifFalse: [ (self - 1) fib + (self - 2) fib ].