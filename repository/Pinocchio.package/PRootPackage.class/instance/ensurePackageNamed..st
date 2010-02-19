exporting
ensurePackageNamed: aPinocchioSymbol
	^ self at: aPinocchioSymbol ifAbsentPut: [ PPackage named: aPinocchioSymbol in: self ]