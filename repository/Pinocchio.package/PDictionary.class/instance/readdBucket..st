private
readdBucket: bucket
	<preventExport>
	| index key |
	bucket ifNil: [ ^ self].
	index := 1.
	[index <= bucket size] whileTrue: [
		key := bucket at: index.
		key ifNil: [ ^ self].
		self at: key put: (bucket  at: index +1).
		index := index + 2.
	].