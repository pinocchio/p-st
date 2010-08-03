convenience
declareClassReference: aClassReference as: aName
	self haltIf: (aName isKindOf: PSymbol).
	pcompiler rootScope decls at: aName put: aClassReference