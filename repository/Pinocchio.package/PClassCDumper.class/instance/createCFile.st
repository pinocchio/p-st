exporting
createCFile
	self assureExistenceOfPath: self sourcePath, self outputFileBase.
	stream := self createStream: '/', self outputFileBase, currentClass name asString , '.c'.
	self createHeader.
	self exportMethods.
	self exportClassMethods.
	self createFooter.
	stream close