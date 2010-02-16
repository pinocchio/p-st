exporting
createCFile.
	self assureExistenceOfPath: self sourcePath, '/lib/class'. 
	stream := self createStream: ('/lib/class/', self pclass name asString, '.c').
	
	self createHeader.
	self exportMethods.
	self exportClassMethods.
	
	self createFooter.
	
	stream close.
	