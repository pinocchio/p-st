matching
privateOmitMatch: input
	| match |
	match := child omitMatch: input.
	match ifNil: [
		^ self consume
			ifTrue: [ input next ]	
			ifFalse: [ true ]
	].
	^ nil.