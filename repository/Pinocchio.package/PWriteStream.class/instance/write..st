writing
write: anObject
	position >= writeLimit
		ifTrue: [^ self pastEndPut: anObject]
		ifFalse: 
			[position := position + 1.
			^collection at: position put: anObject]