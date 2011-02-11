*Pinocchio
pprintOn: aStream
	<renameExport: #printOn:>
	self class name printOn: aStream.
	aStream << $(.
	self do: [:element | element printOn: aStream ] separatedBy: [ aStream << ', '].
	aStream << $).
	^ aStream.