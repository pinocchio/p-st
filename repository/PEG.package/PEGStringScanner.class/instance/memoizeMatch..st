matching
memoizeMatch: parser
	| result bucket |
	bucket := self bucket.
	result := bucket at: parser ifAbsent: [
		(parser parseOn: self)
			ifTrue: [ bucket at: parser put: position@(stack peek). ^ true ]
			ifFalse: [ longestMatch := longestMatch max: position. bucket at: parser put: nil. ^ false ] ].
	result ifNil: [ ^ false ].
	position := result x.
	stack push: result y.
	^ true
	