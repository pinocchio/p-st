message handling
perform: aSymbol with: firstObject with: secondObject
	^ self perform: aSymbol withArguments: (PMessage with: firstObject with: secondObject)