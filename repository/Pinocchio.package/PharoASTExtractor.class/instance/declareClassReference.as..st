convenience
declareClassReference: aClassReference as: aName
	self haltIf: (aName isKindOf: PSymbol). 
	pcompiler rootScope declare: aName as: aClassReference
	