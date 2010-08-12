as yet unclassified
printOn: aStream

	parent isNil 
		ifTrue: [ ^ self ]
		ifFalse: [ 
			parent printOn: aStream.
			aStream nextPutAll: ', '].
	aStream nextPutAll: self name.