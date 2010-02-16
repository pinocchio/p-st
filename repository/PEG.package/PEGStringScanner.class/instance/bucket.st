initialization
bucket
	| bucket |
	bucket := cache at: position + 1.
	bucket ifNotNil: [ ^ bucket ].
	^ cache at: position + 1 put: (SmallDictionary new).