exporting
createHeader
	self include: 'lib/class/' , currentClass name asString , '.h'.
	stream lf; lf.