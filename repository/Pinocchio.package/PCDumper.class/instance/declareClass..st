convenience
declareClass: aPClass
	stream lf.
	self comment: aPClass sclass name.
	stream lf.
	
	self currentClass: aPClass.
	self createClass: aPClass.
	self currentClass: nil.