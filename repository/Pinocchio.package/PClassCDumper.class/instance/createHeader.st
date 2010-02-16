exporting
createHeader
	self include: 'lib/class/', self pclass name asString, '.h'.
	stream cr; cr.