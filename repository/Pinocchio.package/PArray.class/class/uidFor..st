accessing
uidFor: anObject
	<preventExport>
	uidCounter := self uidCounter + 1.
	^ (anObject objectName asLowercase , uidCounter asString) asString