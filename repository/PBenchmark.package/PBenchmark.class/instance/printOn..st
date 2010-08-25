as yet unclassified
printOn: aStream
	runs size > 1 ifTrue: [ self printTotalOn: aStream].
	runs do: [ :run| 
			run printOn: aStream.
			aStream << $ . ].