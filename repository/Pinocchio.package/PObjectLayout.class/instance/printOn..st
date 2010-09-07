printing
printOn: aStream
	aStream << self class name << ' ('.
	self
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream << ', ' ].
	aStream << $)