adding
add: anObject
	"TODO return true/false rather thatn the size diff"
	(self includes: anObject) ifTrue: [ ^ 0 ].
	bucketSize := bucketSize + 1.
	self at: bucketSize put: anObject.
	^ 1
	