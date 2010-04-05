*Pinocchio
printAsCIdentifierAs: aStream
	self do: [ :each | 
		each isAlphaNumeric 
			ifTrue: [ aStream nextPut: each]
			ifFalse: [ 
				aStream nextPut: $_; 
					nextPutAll: each asInteger asString;
					nextPut: $_. 
			].
	].