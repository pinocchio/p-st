convenience
declareClassReference: aClassReference as: aName
	self haltIf: [ aName isKindOf: PSymbol ].
	pinocchioVisitor rootScope decls at: aName put: aClassReference.