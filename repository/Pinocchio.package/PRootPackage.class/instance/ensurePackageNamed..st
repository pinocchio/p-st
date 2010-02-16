exporting
ensurePackageNamed: aPinocchioSymbol
	aPinocchioSymbol should beKindOf: PSymbol.
	^ self at: aPinocchioSymbol ifAbsentPut: [ PPackage named: aPinocchioSymbol in: self ]