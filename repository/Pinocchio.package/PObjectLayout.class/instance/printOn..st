printing
printOn: aStream
	aStream << self class name asString << ' ('.
	self
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream << ', ' ].
	aStream << $)