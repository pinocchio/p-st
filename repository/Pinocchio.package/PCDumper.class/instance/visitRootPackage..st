visitor
visitRootPackage: aPRootPackage
	self visitCollection: aPRootPackage members.
	self addGlobal: aPRootPackage