accessing
keys: keys bucket: bucket
	| index key |
	bucket ifNil: [ ^ self ].
	index := 1.
	[index <= bucket size] whileTrue: [
		key := bucket at: index.
		key ifNil: [ ^ self.].
		keys add: key.
		index := index + 2.
	]