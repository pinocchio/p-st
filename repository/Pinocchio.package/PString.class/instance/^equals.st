comparing
= other
	<preventExport>
	^ self class = other class and: [ self string = other string ].