visitor
visitRootPackage: aPRootPackage

	| new |
	new := #new asPObject.
	globals add: new.
	self visit: new.

	self visitCollection: aPRootPackage members.
	globals add: aPRootPackage.
	