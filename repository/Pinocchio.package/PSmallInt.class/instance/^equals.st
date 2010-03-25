comparing
= other
	<preventExport>
	other class = SmallInteger
		ifTrue: [ ^ self int = other ].
	^ self class = other class and: [ self int = other int ]