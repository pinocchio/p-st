exporting
export
	PSymbol clearSymbolCache.
	self clear.

	exporter restrictExportOn: restrictionSet.
	
	self exportClasses.
	self createCFile.
	self createHFile.