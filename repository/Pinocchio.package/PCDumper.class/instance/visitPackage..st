visitor
visitPackage: aPPackage
	self visitCollection: aPPackage members.
	globals add: aPPackage