matching
memoizeMatch: parser
	| result bucket |
	bucket := self bucket.
	result := bucket at: parser ifAbsent: [
		(parser parseOn: self)
			ifTrue: [ bucket at: parser put: position@(stack peek). ^ true ]
			ifFalse: [ bucket at: parser put: (Point x: nil y: position). ^ false ] ].
	result x ifNil: [ ^ false ].
	position := result x.
	stack push: result y.
	^ true
	