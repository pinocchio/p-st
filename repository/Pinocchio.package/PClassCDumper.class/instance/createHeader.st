exporting
createHeader
	self include: self outputFileBase, '.h'.
	stream lf; lf.
	self exportGlobalsForCFile.
	stream lf.