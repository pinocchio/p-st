visitor
visitPackage: aPPackage 
	"TODO"
	self visitCollection: aPPackage members.
	globals add: aPPackage.