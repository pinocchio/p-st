printing
printOn: aStream
	<preventExport>
	super printOn: aStream.
	self instance name printOn: aStream