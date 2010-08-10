exporting
createCFile
	| layout fileStream |
	self assureExistenceOfPath: self sourcePath, self outputFileBase.
	stream := IndentableWriteStream on: (String new: 1500 * currentClass methods size).
	"visit the layout first to create all the globals"
	layout := self exportLayout.
	
	self createHeader.
	self exportMethods.
	self exportClassMethods.
	stream << layout.
	self createFooter.
	fileStream := self createStream: '/', self outputFileBase, currentClass name asString , '.c'.
	fileStream << stream.
	fileStream close