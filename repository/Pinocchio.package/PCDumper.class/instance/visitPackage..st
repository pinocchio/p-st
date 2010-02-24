visitor
visitPackage: aPPackage 

	| namedin |
	namedin := #named:in: asPObject.
	globals add: namedin.
	self visit: namedin.

	packages add: aPPackage.
	self visitCollection: aPPackage members.
	globals add: aPPackage.