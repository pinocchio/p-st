convenience
append: aSymbol with: aValue
	self append: aSymbol.
	code add: aValue.
	