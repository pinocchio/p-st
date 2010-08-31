visitor
visitRootPackage: aPRootPackage
	self visitCollection: aPRootPackage.
	self addGlobal: aPRootPackage