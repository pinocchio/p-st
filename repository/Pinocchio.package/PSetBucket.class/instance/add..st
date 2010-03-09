adding
add: anObject
	(self includes: anObject) ifTrue: [ ^ anObject].
	bucketSize := bucketSize + 1.
	self at: bucketSize put: anObject.
	^ anObject.
	