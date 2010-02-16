*Pinocchio
printCEscapedOn: aStream
	self do: [ :each|
		each printCEscapedOn:  aStream.
	]