accessing
at: anObject
	^ ids at: anObject ifAbsentPut: [ (self rawIdFor: anObject) asSymbol ]