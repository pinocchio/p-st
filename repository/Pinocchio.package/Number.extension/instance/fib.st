*Pinocchio
fib
	^ self < 2 ifTrue: [ 1 ]
		ifFalse2: [ (self - 1) fib + (self - 2) fib ].