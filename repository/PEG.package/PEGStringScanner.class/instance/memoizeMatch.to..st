matching
memoizeMatch: parser to: stream
	| bucket old |
	bucket := self bucket.
	bucket at: parser ifPresent: [ :result |
		position := result x.
		parser hit.
		^ result y
			ifNil: [ false ]
			ifNotNil: [ :r | stream push: r. true ]].
	old := position.
	parser miss.
	^ (parser match: self to: stream)
		ifTrue: [ bucket at: parser put: position@(stream peek). true ]
		ifFalse: [ position := old. bucket at: parser put: old@nil. false ]