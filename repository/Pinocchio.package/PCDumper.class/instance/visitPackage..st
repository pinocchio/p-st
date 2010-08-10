visitor
visitPackage: aPPackage
	self visitCollection: aPPackage members.
	self addGlobal: aPPackage