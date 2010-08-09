testing
includes: anObject
	self bucketsDo: [ :bucket | (bucket includes: anObject) ifTrue: [ ^ true ]].
	^ false