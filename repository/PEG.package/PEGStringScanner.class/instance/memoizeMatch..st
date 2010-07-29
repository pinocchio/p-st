matching
memoizeMatch: parser
	| result bucket |
	bucket := self bucket.
	result := bucket at: parser ifAbsent: [
		(parser parseOn: self)
			ifTrue: [ bucket at: parser put: position@(stack peek). ^ true ]
			ifFalse: [ bucket at: parser put: position@nil. ^ false ] ].
	
	position := result x.
	result y ifNil: [ ^ false ].
	stack push: result y.
	^ true
	