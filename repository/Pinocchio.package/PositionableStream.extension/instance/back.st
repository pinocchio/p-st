*Pinocchio
back
	"Go back one element and return it."
	| result |
	(position = 0 or: [ position > readLimit ]) ifTrue: [self positionError].
	result := collection at: position.
	position := position - 1.
	^ result