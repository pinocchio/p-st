matching
memoizeMatch: parser to: stream
	| result |
	result := self bucket
		at: parser
		ifAbsentPut:
			[ result := parser performMatch: self to: stream.
			position @ result ].
	position := result x.
	^ result y
		ifNil: [ false ]
		ifNotNil: [ :r | stream push: r. true ]