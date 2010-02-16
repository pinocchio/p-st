comparing
= other
	<preventExport>
	^ (other isKindOf: self class) and: [ self char = other char ].