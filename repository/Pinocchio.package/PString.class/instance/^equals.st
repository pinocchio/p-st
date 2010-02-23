comparing
= other
	<preventExport>
	other class = ByteString  ifTrue: [^ self string = other].
	other class = ByteSymbol  ifTrue: [^ self string = other].
	^ self class = other class and: [ self string = other string ].