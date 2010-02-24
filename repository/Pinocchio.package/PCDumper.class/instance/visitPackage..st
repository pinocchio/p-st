visitor
visitPackage: aPPackage 
	packages add: aPPackage.
	self visitCollection: aPPackage members.
	globals add: aPPackage.