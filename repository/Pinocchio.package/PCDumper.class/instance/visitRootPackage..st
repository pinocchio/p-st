visitor
visitRootPackage: aPRootPackage
	self visitCollection: aPRootPackage members.
	globals add: aPRootPackage.
	