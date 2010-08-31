printing
printOn: aStream
	self pathDo: [ :segment | aStream << segment shortName ]
		separatedBy: [ aStream << $. ]