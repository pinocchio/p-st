message handling
perform: aSymbol with: firstObject with: secondObject
	^ self perform: aSymbol withArguments: (Array with: firstObject with: secondObject)