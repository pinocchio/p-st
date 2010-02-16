accessing
uidFor: anObject 
	<preventExport>
	self UIDCounter: self uidCounter + 1.
	^ (anObject objectName asLowercase , self uidCounter asString) asString