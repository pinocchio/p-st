running
testFibonacci
	| result |
	parser := scparser method.
	result := self ast: 'fib
		^ self < 2 ifTrue: [ 1 ] ifFalse: [ ((self - 1) fib) + ((self - 2) fib)]'.
	dumper visit: result.
	Transcript show: dumper