message handling
perform: aSymbol with: anObject
	^ self perform: aSymbol withArguments: (PMessage with: anObject)