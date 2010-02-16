comparing
= other
	<preventExport>
	^ self class = other class and: [ self int = other int ]