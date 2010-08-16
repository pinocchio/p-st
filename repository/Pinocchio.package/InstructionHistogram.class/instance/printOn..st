as yet unclassified
printOn: aStream
	parent isNil ifTrue: [ ^ self ].
	parent name isNil	ifFalse: [ 
			parent printOn: aStream.
			aStream nextPutAll: ', '].
	aStream nextPutAll: self name.