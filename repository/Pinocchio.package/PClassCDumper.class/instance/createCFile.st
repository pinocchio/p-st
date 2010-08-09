exporting
createCFile
	| layout |
	self assureExistenceOfPath: self sourcePath, self outputFileBase.
	stream := self createStream: '/', self outputFileBase, currentClass name asString , '.c'.
	"visit the layout first to create all the globals"
	layout := self exportLayout.
	
	self createHeader.
	self exportMethods.
	self exportClassMethods.
	stream << layout contents.
	self createFooter.
	stream close