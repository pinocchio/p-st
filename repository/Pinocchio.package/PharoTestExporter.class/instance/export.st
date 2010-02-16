exporting
export
	PSymbol clearSymbolCache.
	self clear.
	self exportClasses.
	self createCFile.
	self createHFile.