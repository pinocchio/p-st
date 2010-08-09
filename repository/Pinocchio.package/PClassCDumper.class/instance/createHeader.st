exporting
createHeader
	self include: self outputFileBase , currentClass name asString , '.h'.
	stream lf; lf.
	self exportGlobalsForCFile.
	stream lf.