as yet unclassified
printOn: aStream
	aStream << (self name isNil ifFalse: [ self name ] ifTrue: [ self selector ]).
	^ super printOn: aStream.