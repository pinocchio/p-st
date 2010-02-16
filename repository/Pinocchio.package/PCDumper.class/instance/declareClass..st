convenience
declareClass: aPClass
	stream cr.
	self comment: aPClass sclass name.
	stream cr.
	
	self currentClass: aPClass.
	self createClass: aPClass.
	self currentClass: nil.