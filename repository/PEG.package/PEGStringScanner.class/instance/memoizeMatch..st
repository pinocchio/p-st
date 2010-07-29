matching
memoizeMatch: parser
	| result bucket |
	bucket := self bucket.
	result := bucket at: parser ifAbsent: [
		(parser parseOn: self)
			ifTrue: [ bucket at: parser put: position@stack peek. ^ true ].
		bucket at: parser put: position@nil.
		^ false ].
	
	result y ifNil: [ ^ false ].
	position := result x.
	stack push: result y.
	^ true
	