adding
add: anObject
	(self includes: anObject) ifTrue: [ ^ 0 ].
	bucketSize := bucketSize + 1.
	self at: bucketSize put: anObject.
	^ 1
	