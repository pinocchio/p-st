convenience
declareClass: aPClass
	stream lf.
	self comment: aPClass sclass name.
	stream lf.
	currentClass := aPClass.
	self createClass: aPClass.
	currentClass := nil