exporting
createHeader
	self include: 'lib/class/' , self pclass name asString , '.h'.
	stream
		lf;
		lf