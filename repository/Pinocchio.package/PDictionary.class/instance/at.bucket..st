accessing
at: atKey bucket: bucket
	<preventExport>
	| index key |
	index := 1.
	[index <= bucket size] whileTrue: [
		key := bucket at: index.
		key ifNil: [ ^ nil ].
		key == atKey ifTrue: [
			^ bucket at: index + 1
		].
		index := index + 2.
	]