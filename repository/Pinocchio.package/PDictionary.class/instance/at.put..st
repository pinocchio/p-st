accessing
at: key put: anObject
	<preventExport>
	(self bucketForHash: key hash) addKey: key value: anObject.
	size := size + 1.
	self shouldGrow ifTrue: [ self grow].
	^ anObject
