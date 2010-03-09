accessing
values: values bucket: bucket
	| index value |
	bucket ifNil: [ ^ self ].
	index := 2.
	[index <= bucket size] whileTrue: [
		value := bucket at: index.
		value ifNil: [ ^ self.].
		values add: value.
		index := index + 2.
	]