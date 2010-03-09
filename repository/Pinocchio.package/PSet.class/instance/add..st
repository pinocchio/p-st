adding
add: anObject
	(self bucketForHash: anObject hash) add: anObject.
	size := size + 1.
	self shouldGrow ifTrue: [ self grow ].
	^ anObject
	