writing
write: anObject
	position >= writeLimit ifTrue: [ self growTo: position + 10 ].
	position := position + 1.
	^ collection at: position put: anObject