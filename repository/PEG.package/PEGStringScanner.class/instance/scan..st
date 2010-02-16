initialization
scan: otherString
	" Maybe we should use other objects to mark... "
	^ (self beginsWith: otherString)
		ifTrue: [ otherString ]
		ifFalse: [ nil ]