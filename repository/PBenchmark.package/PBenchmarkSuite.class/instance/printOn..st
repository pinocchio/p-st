printing
printOn: aStream
	self inspectNameOn: aStream.
	runs do: [ :run| 
		run printOn: aStream.
		aStream << $ . ].