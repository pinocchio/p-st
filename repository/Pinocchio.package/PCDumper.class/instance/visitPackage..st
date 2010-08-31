visitor
visitPackage: aPPackage
	self visitCollection: aPPackage.
	self addGlobal: aPPackage