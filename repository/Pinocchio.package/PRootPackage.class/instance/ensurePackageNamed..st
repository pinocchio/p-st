exporting
ensurePackageNamed: aPinocchioSymbol
	^ self at:
		aPinocchioSymbol asSymbol
		ifAbsentPut: [ PPackage named: aPinocchioSymbol in: self ]